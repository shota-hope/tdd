require 'rspec'
require 'dollar'
require 'franc'
require 'pry'

RSpec.describe Money do
  it 'multiplies the amount by a factor' do
    five = Money.dollar(5)
    expect(five.times(2).amount).to eq(Money.dollar(10).amount)
    product = five.times(3)
    expect(five.times(3).amount).to eq(Money.dollar(15).amount)
  end

  it '#epuals' do
    expect(Money.dollar(5).equals(Money.dollar(5))).to be_truthy
    expect(Money.dollar(5).equals(Money.dollar(6))).to be_falsey
    expect(Money.franc(5).equals(Money.franc(5))).to be_truthy
    expect(Money.franc(5).equals(Money.franc(6))).to be_falsey
    expect(Money.franc(5).equals(Money.dollar(5))).to be_falsey
  end

  it 'test franc mutipication' do
    five = Money.franc(5)
    expect(five.times(2).amount).to eq(Money.franc(10).amount)
    product = five.times(3)
    expect(five.times(3).amount).to eq(Money.franc(15).amount)
  end

  it 'currency' do
    expect(Money.dollar(1).currency).to eq("USD")
    expect(Money.franc(1).currency).to eq("CHF")
  end

  it 'differenc class equality' do
    expect(Money.new(10, "CHF").equals(Franc.new(10, "CHF"))).to be_truthy
  end
end
