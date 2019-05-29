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
      generator = QuoteGeneratorService.new(user.age)
      message = $twilio_client.api.account.messages.create(
        from: '+15005550006',
        to:   user.phone,
        body: "Hey there! We have got a perfect quote for your travel insurance starting with just #{generator.quote}"
      )

      puts ">>>>>>>>>>>>>>>>>>>>>>>>> Quote Rate:  #{generator.quote}"
      puts "=========== Message send it sid: #{message.sid} ==============="
    end
  end
end
