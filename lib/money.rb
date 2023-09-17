class Money
  attr_accessor :amount

  def initialize(amount)
    @amount = amount
  end

  def equals(money)
    @amount == money.amount && self.class == money.class
  end

  def self.dollar(amount)
    Dollar.new(amount)
  end

  def self.franc(amount)
    Franc.new(amount)
  end
end
