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

class Margin < ApplicationRecord

  def self.get_basic
    Margin.where(plan: "Basic").first
  end

  def self.get_standard
    Margin.where(plan: "Standard").first
  end

  def basic?
    plan == "Basic"
  end

  def standard?
    plan == "Standard"
  end
end
