require_relative './my_enumerable'
class MyList
  include MyEnumerable
  def initialize(list)
    @list = list
  end

  def each(&block)
    @list.each(&block)
  end
end
list = MyList.new([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
puts(list.all? { |i| i > 5 })
puts(list.any? { |i| i > 5 })
puts(list.filter { |i| i > 5 })
