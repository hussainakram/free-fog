# == Schema Information
#
# Table name: sms_logs
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  quote_id   :integer
#  body       :text
#  from       :string
#  to         :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_sms_logs_on_quote_id  (quote_id)
#  index_sms_logs_on_user_id   (user_id)
#

FactoryBot.define do
  factory :sms_log do
    user nil
    quote nil
    body "MyText"
    from "MyString"
    to "MyString"
  end
end
