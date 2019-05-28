# == Schema Information
#
# Table name: quotes
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  company_id :integer
#  rate       :decimal(, )
#
# Indexes
#
#  index_quotes_on_company_id  (company_id)
#  index_quotes_on_user_id     (user_id)
#

class Quote < ActiveRecord::Base
  belongs_to :user

end
