# == Schema Information
#
# Table name: whitelisted_locations
#
#  id         :integer          not null, primary key
#  name       :string
#  longitude  :decimal(10, 6)
#  latitude   :decimal(10, 6)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_whitelisted_locations_on_longitude_and_latitude  (longitude,latitude)
#

class WhitelistedLocation < ApplicationRecord
  acts_as_mappable distance_field_name: :distance,
                   lat_column_name:     :latitude,
                   lng_column_name:     :longitude
end
