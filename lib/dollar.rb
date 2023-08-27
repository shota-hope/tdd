require 'money'

class Dollar
  attr_accessor :amount

  def initialize(amount)
    @amount = amount
  #   @currency = currency
  end

  def times(multiplier)
    @amount *= multiplier
  end
end
