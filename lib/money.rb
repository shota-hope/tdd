class Money
  attr_accessor :amount
  attr_accessor :currency

  def initialize(amount, currency)
    @amount = amount
    @currency = currency
  end

  def equals(money)
    @amount == money.amount && self.class == money.class
  end

  def self.dollar(amount)
    Dollar.new(amount, "USD")
  end

  def self.franc(amount)
    Franc.new(amount, "CHF")
  end
end
