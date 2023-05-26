module My_Enumerable
  def all?
    each { |ele| return false unless yield(ele) }
    true
  end

  def any?
    each { |ele| return true if yield(ele) }
    false
  end

  def filter
    result = []
    each { |ele| result << item if yield(ele) }
    result
  end
end
