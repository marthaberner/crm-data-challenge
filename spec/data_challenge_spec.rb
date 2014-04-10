require 'rspec'
require 'data_challenge'

describe UrlChallenge do
  it "returns an name of a company when the id is called" do

    data = {
      :people => [
        {
          :id => 26,
          :first_name => "Urban",
          :last_name => "Coty",
          :employments => []
        },
        {
          :id => 27,
          :first_name => "Jane",
          :last_name => "Otto",
          :employments => []
        },
        {
          :id => 28,
          :first_name => "Oliver",
          :last_name => "Anna",
          :employments => []
        },
        {
          :id => 29,
          :first_name => "Lawrence",
          :last_name => "Lera",
          :employments => [
            {
              :company_id => 2,
              :title => "Human Tactics Assistant"
            }
          ]
        },
      ],
      :companies => [
        {
          :id => 2,
          :name => "Mohr, King and Gleason"
        },
        {
          :id => 3,
          :name => "Grimes Inc"
        },
        {
          :id => 4,
          :name => "Schmidt-Rolfson"
        }
      ]
    }
    record = UrlChallenge.new(data)

    expected_company = ["Mohr, King and Gleason"]
    actual_company = record.companies(2)

    expect(actual_company).to eq(expected_company)

  end

  it "returns unemployed bitches" do
    data = {
      :people => [
        {
          :id => 26,
          :first_name => "Urban",
          :last_name => "Coty",
          :employments => []
        },
        {
          :id => 27,
          :first_name => "Jane",
          :last_name => "Otto",
          :employments => []
        },
        {
          :id => 28,
          :first_name => "Oliver",
          :last_name => "Anna",
          :employments => []
        },
        {
          :id => 29,
          :first_name => "Lawrence",
          :last_name => "Lera",
          :employments => [
            {
              :company_id => 2,
              :title => "Human Tactics Assistant"
            }
          ]
        },
      ]
    }
    record = UrlChallenge.new(data)

    expect(record.unemployed).to eq [
                                      "Urban", "Jane", "Oliver"
                                    ]
  end
end