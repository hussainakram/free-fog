require "common"
class UnitrustService

  def initialize(dob, **args)
    @rate = nil
    @dob = dob
  end

  def get_rate(company)
    case @dob
    when 1..20
      @rate = 3.5
    when 20..25
      @rate = 4
    when 25..30
      @rate = 4.5
    when 30..40
      @rate = 5
    when String
      raise "Age should be a number"
    end

    company.add_margin(@rate, ourea_margin: Common::OUREA_FIXED_MARGIN, etisalat: Common::ETISALAT_PERCENTAGE_FACTOR)
  end

end
