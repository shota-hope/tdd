require 'money'

class Bank

  def initialize
    @rate = {}
  end

  def reduce(source, to)
    sum = source
    sum.reduce(self, to)
  end

  def add_rate(from, to, rate)
    @rate["#{from}_#{to}"] = rate
  end

  def rate(from, to)
    return 1 if from == to
    @rate["#{from}_#{to}"]
  end
end
