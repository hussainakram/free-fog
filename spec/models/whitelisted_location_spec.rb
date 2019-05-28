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

require 'rails_helper'

RSpec.describe WhitelistedLocation, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
