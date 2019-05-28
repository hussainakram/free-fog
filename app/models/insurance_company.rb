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

end
