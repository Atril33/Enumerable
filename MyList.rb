require_relative 'My_Enumerable'

class My_List
  include MyEnumerable

  def initialize(*items)
    @list = items
  end

  def each
    @list.each { |ele| yield(ele) }
  end
end

list = My_List.new(1, 2, 3, 4)
list.all? { |ele| ele < 5 }
list.any? { |ele| ele == 5 }
list.filter { |ele| ele.even? }
