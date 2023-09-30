class Pair
  attr_accessor :from, :to

  def initialize(from, to)
    @from = from
    @to = to
  end

  def equals(object)
    pair = object
    from.equals(pair.from) && to.equals(pair.to)
  end

  def hash_code
    0
  end
end
