require_relative 'MyEnumerable'

class MyList
  include MyEnumerable

  def initialize(*list)
    @list = list
  end

  def each
    (0...@list.length).each do |item|
      yield @list[item]
    end
  end

  # def each(&block)
  #     @list.each(&block)
  # end
end

# Create our list
list = MyList.new(1, 2, 3, 4)

# Test #all?
p list.all? { |e| e < 5 }
#=> true

# Test #any?
p list.any? { |e| e == 2 }
#=> true
p list.any? { |e| e == 5 }
#=> false

# Test #filter
p list.filter(&:even?)
#=> [2, 4]
