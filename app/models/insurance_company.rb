# == Schema Information
#
# Table name: insurance_companies
#
#  id      :integer          not null, primary key
#  name    :string
#  contact :string
#  office  :string
#

class InsuranceCompany < ActiveRecord::Base
  has_many :quotes, foreign_key: :company_id

  def add_margin(rate)
    margin = Margin.get_basic
    if margin.ourea_fixed.present?
      rate += margin.ourea_fixed
    elsif margin.ourea_factor.present?
      rate *= margin.ourea_factor
    end

    if margin.etisalat_fixed.present?
      rate += margin.etisalat_fixed
    elsif margin.etisalat_factor.present?
      rate *= margin.etisalat_factor
    end

    rate
  end
end
