module Enumerable

  def to_histogram
    result = Hash.new(0)
    each { |x| result[x] += 1 }
    result
  end

  def most_popular_n(n)
    ret = []
    h = self.to_histogram
    n.times do
      ret << max_by { |x| h[x] }
      h.delete(ret.last)
    end
    ret
  end

  def most_popular
    most_popular_n(1).first
  end

end
