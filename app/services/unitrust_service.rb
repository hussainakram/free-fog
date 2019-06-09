require "common"
class UnitrustService

  def initialize(dob, **args)
    @rate = nil
    @dob = dob
    @plan = args[:plan]
  end

  def get_rate(company)

    if @plan == "Standard"
      calc_standard_rate
    else
      calc_basic_rate
    end

    company.add_margin(@rate)
  end

  def calc_standard_rate
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
  end

  def calc_basic_rate
    case @dob
    when 1..20
      @rate = 4.5
    when 20..25
      @rate = 5
    when 25..30
      @rate = 6
    when 30..40
      @rate = 7
    when String
      raise "Age should be a number"
    end
  end
end
