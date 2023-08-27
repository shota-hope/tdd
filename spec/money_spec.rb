require 'rspec'
# require 'money'
require 'dollar'

RSpec.describe Money do
  it 'multiplies the amount by a factor' do
    five = Dollar.new(5)
    five.times(2)
    expect(five.amount).to eq(10)
  end
end
