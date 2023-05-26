require_relative 'my_enumerable'

class MyList
  include Enumerable

  def initialize(*items)
    @list = items
  end

  def each
    index = 0
    while index < @list.length
      yield @list[index]
      index += 1
    end
  end
end
list = MyList.new(1, 2, 3, 4)
puts(list.all? { |e| e > 5 })
puts(list.any? { |e| e == 5 })
puts(list.filter { |e| e.even? })
