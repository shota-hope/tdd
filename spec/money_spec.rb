require 'rspec'
require 'franc'
require 'pry'

RSpec.describe Money do
  it '#epuals' do
    expect(Money.dollar(5).equals(Money.dollar(5))).to be_truthy
    expect(Money.dollar(5).equals(Money.dollar(6))).to be_falsey
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
end
