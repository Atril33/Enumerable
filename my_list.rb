require_relative 'Enumerable'

class MyList
  include MyEnumerable

  def initialize(*items)
    @list = items
  end

  def each
    @list.each { |ele| yield ele }
  end
end
