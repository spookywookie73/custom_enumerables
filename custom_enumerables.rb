module Enumerable

  def my_each
    count = 0
    while count != self.size
      yield self[count]
      count += 1
    end
    self
  end

end