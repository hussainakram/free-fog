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

FactoryBot.define do
  factory :margin do
    plan "MyString"
    ourea_fixed "9.99"
    ourea_factor "9.99"
    etisalat_fixed "9.99"
    etisalat_factor "9.99"
  end
end
