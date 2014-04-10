class UrlChallenge
  def initialize(data)
    @data = data
  end

  def unemployed
    result = []
    people = @data[:people]
    people.each do |person|
      if person[:employments].empty?
        result << person[:first_name]
      end
    end
    result
  end

  def companies(company_id)
      result = []
    companies = @data[:companies]
    companies.each do |company|
      if  company[:id] == company_id
        result << company[:name]
      end
    end
    result
  end
end
