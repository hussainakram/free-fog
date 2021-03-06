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

FactoryBot.define do
  factory :tour do
    name "MyString"
    longitude "MyString"
    latitude "MyString"
    user_id 1
  end
end
