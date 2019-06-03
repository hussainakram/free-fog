# == Schema Information
#
# Table name: insurance_companies
#
#  id                :integer          not null, primary key
#  name              :string
#  contact           :string
#  office            :string
#  fixed_margin      :decimal(, )
#  percentage_margin :decimal(, )
#

class InsuranceCompany < ActiveRecord::Base
  has_many :quotes, foreign_key: :company_id

  def add_margin(rate, ourea_margin:, etisalat:)
    if fixed_margin
      rate += fixed_margin
    elsif percentage_margin
      rate *= percentage_margin
    end

    rate = (rate * etisalat) + ourea_margin
  end
end
