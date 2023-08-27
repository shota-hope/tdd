require 'rspec'
require 'dollar'

RSpec.describe Dollar do
  it 'multiplies the amount by a factor' do
    five = Dollar.new(5)
    product = five.times(2)
    expect(product.amount).to eq(10)
    product = five.times(3)
    expect(product.amount).to eq(15)
  end

  it '#epuals' do

    expect(Dollar.new(5).equals(Dollar.new(5))).to be_truthy
    expect(Dollar.new(5).equals(Dollar.new(6))).to be_falsey
  end
end
