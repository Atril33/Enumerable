require_relative 'Enumerable'

class MyList
  include MyEnumerable

  def initialize(*items)
    @list = items
  end
end

list = MyList.new(1, 2, 3, 4)
list.all? { |e| e > 5 }
list.any? { |e| e == 5 }
list.filter { |e| e.even? }
