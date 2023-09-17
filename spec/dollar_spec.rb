require 'rspec'
require 'dollar'
require 'franc'

RSpec.describe Dollar do
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
    five = Franc.new(5)
    expect(five.times(2).amount).to eq(Money.franc(10).amount)
    product = five.times(3)
    expect(five.times(3).amount).to eq(Money.franc(15).amount)
  end
end
