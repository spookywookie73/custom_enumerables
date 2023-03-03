module Enumerable
  # these method's are for Array's only.
  def my_each
    count = 0
    while count != self.size
      yield self[count]
      count += 1
    end
    self
  end
  
  def my_each_with_index
    count = 0
    while count != self.size
      yield self[count], count
      count += 1
    end
    self
  end

  def my_select
    count = 0
    result = []
    while count != self.size
      if yield self[count]
        result.push(self[count])
      end
      count += 1
    end
    result
  end

  def my_all?
    count = 0
    result = nil
    while count != self.size
      if yield self[count]
        result = true
      else
        result = false
      end
      count += 1
    end
    result
  end
  
  def my_any?
    for num in self
      return true if yield(num)
    end
      return false
  end

  def my_none?
    for num in self
      return false if yield(num)
    end
      return true
  end

  def my_count
    count = 0
    return self.size unless block_given?

    for num in self
      count += 1 if yield(num)
    end
    return count
  end
  
  def my_map
    result = []
    for num in self
      result.push(yield(num))
    end
    return result
  end

  def my_inject(arg = nil)
    for num in self
      if arg == nil
        arg = num
      else
        arg = yield(arg, num)
      end
    end
    arg
  end

end