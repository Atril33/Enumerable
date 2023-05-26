module MyEnumerable
    def all?(&block)
      each { |item| return false unless block.call(item) }
      true
    end
  
    def any?(&block)
      each { |item| return true if block.call(item) }
      false
    end
  
    def filter(&block)
      array = []
      each { |item| array << item if block.call(item) }
      array
    end
  end