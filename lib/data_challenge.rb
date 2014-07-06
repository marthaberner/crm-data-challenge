class DataChallenge

  def initialize(data)
    @data = data
  end

  def company_employees
    company_employees = []
    @data[:people].each do |person|
      person[:employments].each do |employment|
        @data[:companies].each do |company|
          if company[:id] == employment[:company_id]
            company_employees << {
              :name => company[:name],
              :employees => [
                {
                  :id => person[:id],
                  :first_name => person[:first_name],
                  :last_name => person[:last_name],
                  :title => employment[:title]
                }
              ]
            }
          end
        end
      end
    end
    company_employees
  end
end