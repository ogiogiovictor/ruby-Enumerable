module Enumerable
  def all?
    for i in self
      return false unless yield(i)
    end
    return true
  end

  def any?
    for i in self
      return true if yield(i)
    end
    return false
  end

  def filter
    result = []
    for i in self
      result << i if yield(i)
    end
    return result
  end

end
