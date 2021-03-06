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

require 'rails_helper'

RSpec.describe Tour, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
