class QuoteGeneratorService
  def initialize(dob)
    @dob = dob
    @rate = nil
    @valid_date = nil
  end

  def quote
    case @dob
    when 1..20
      @rate = "1 AED"
    when 20..25
      @rate = "1.5 AED"
    when 25..30
      @rate = "2 AED"
    when 30..40
      @rate = "2 AED"
    when String
      raise "Age should be a number"
    end
  end
end
