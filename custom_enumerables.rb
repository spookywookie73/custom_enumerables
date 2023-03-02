module Enumerable

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
  
end