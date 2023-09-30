require 'rspec'
require 'pry'
require 'money'
require 'bank'
require 'sum'

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

  it 'simple addtion' do
    five = Money.dollar(5)
    sum = five.plus(five)
    bank = Bank.new
    reduced= bank.reduce(sum, 'USD')
    expect(reduced.amount).to eq(Money.dollar(10).amount)
  end

  it 'plus return sum' do
    five = Money.dollar(5)
    result = five.plus(five)
    sum = result
    expect(sum.augend).to eq(five)
  end

  it 'reduce sum' do
    sum = Sum.new(Money.dollar(3), Money.dollar(4))
    bank = Bank.new
    result = bank.reduce(sum, 'USD')
    expect(Money.dollar(7).amount).to eq(result.amount)
  end

  it "reduce money" do
    bank = Bank.new
    result = bank.reduce(Money.dollar(1), "USD")
    expect(result.amount).to eq Money.dollar(1).amount
  end
end
