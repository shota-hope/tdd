require 'rspec'
require 'dollar'

RSpec.describe Dollar do
  it 'multiplies the amount by a factor' do
    five = Dollar.new(5)
    expect(five.times(2).amount).to eq(Dollar.new(10).amount)
    product = five.times(3)
    expect(five.times(3).amount).to eq(Dollar.new(15).amount)
  end

  it '#epuals' do
    expect(Dollar.new(5).equals(Dollar.new(5))).to be_truthy
    expect(Dollar.new(5).equals(Dollar.new(6))).to be_falsey
  end
end
