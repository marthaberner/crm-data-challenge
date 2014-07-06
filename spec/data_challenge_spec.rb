require 'rspec'
require 'data_challenge'
require_relative '../data/test_data'

describe DataChallenge do
  it 'returns an array of companies, and the people who work for them' do
    input = DataChallenge.new(DATA)

    expected = [
      {
        name: "Nicolas and Sons",
        employees: [
          {
            :id => 2,
            :first_name => "Savannah",
            :last_name => "Clementina",
            :title => "Big Boss"
          }
        ]
      },
      {
        name: "Mueller LLC",
        employees: [
          {
            :id => 3,
            :first_name => "Elyse",
            :last_name => "Jensen",
            :title => "Chief Communications Consultant"
          }
        ],
      },
    ]

    expect(input.company_employees).to eq(expected)
  end
end
