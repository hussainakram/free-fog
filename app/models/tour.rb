# == Schema Information
#
# Table name: tours
#
#  id         :integer          not null, primary key
#  name       :string
#  longitude  :decimal(10, 6)
#  latitude   :decimal(10, 6)
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_tours_on_longitude_and_latitude  (longitude,latitude)
#

class Tour < ApplicationRecord
  belongs_to :user

  def search_quote
    is_prime =  WhitelistedLocation.within(10, origin: [latitude, longitude]).present?

    if is_prime
      quote = QuoteGeneratorService.new(user.age).quote
      send_message(quote)
    end
  end

  def send_message(quote)
    from = Figaro.env.twilio_sender
    to = user.phone
    body = "Hi #{user.first_name}, We have got amazing offer for your travel insurance starting with just #{quote}"

    client = Twilio::REST::Client.new
    message = client.api.account.messages.create(from: from, to: to, body: body) rescue nil

    quote = user.quotes.create(rate: quote)
    user.sms_logs.create(from: from, to: to, body: body, quote_id: quote.id)
  end
end
