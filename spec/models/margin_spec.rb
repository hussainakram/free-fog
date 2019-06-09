# == Schema Information
#
# Table name: margins
#
#  id              :integer          not null, primary key
#  plan            :string
#  ourea_fixed     :decimal(, )
#  ourea_factor    :decimal(, )
#  etisalat_fixed  :decimal(, )
#  etisalat_factor :decimal(, )
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'rails_helper'

RSpec.describe Margin, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
