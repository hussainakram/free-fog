class QuoteGeneratorService
  def initialize(dob, **args)
    @dob = dob
    @rate = nil
    @valid_date = nil
  end

  def quote
    @quotes = {}
    InsuranceCompany.find_each do |company|
      service = eval(company.name.camelcase + "Service.new(#{@dob})")
      @quotes[company.name.underscore] = service.get_rate(company)
    end
    @quotes.values.min
  end
end
