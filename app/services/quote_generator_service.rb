class QuoteGeneratorService
  def initialize(dob)
    @dob = dob
  end

  def quote
    case @dob
    when < 20
      "He is very short"
    when > 25
      "Seems right"
    end
  end
end
