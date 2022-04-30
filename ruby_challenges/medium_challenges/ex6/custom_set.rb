=begin
Create a custom `set` type. It must behave like a set of unique elements that
can be manipulated in several well defined ways.

Rules:
  You may assume all elements of a set must be numbers.

Methods:
  initialize
  - if provided no arguments, returns an empty set
  - if provided an array of elements, keeps the unique elements

  empty?
  - returns true if set is empty
  - returns false if set is not empty

  contains?
  - return boolean based on whether argument is in the set

  subset?
  - return false if any element of the calling set is not in the argument set
  - return true otherwise

  disjoint?
  - two sets are disjoint if they have no shared elements
  - all sets are disjoint with the empty set
  - if the caller and argument share any elements, return false

  eql?
  - return true if the elements in the caller and argument are the same,
  regardless of order
  - return false if the elements are distinct

  add
  - add the argument to elements of calling set

  ==
  - return true if the elements of calling and argument are the same

  intersection
  - return a new CustomSet object that is the intersection of the two sets

  difference
  - return a new CustomSet object that contains all the elements of the caller
  that are not in the argument

  union
  - Return a new CustomSet object that contains all the elements of both caller
  and argument
=end

class CustomSet
  attr_reader :elements

  def initialize(elements = [])
    @elements = elements.uniq
  end

  def empty?
    elements.empty?
  end

  def contains?(ele)
    elements.include?(ele)
  end

  def subset?(other)
    elements.each { |ele| return false unless other.contains?(ele) }
    true
  end

  def disjoint?(other)
    elements.each { |ele| return false if other.contains?(ele) }
    true
  end

  def eql?(other)
    elements.sort == other.elements.sort
  end

  def add(ele)
    elements << ele unless contains?(ele)
    self
  end

  def ==(other)
    eql?(other)
  end

  def intersection(other)
    int = CustomSet.new
    elements.each { |ele| int.add(ele) if other.contains?(ele) }
    int
  end

  def difference(other)
    diff = CustomSet.new
    elements.each { |ele| diff.add(ele) unless other.contains?(ele) }
    diff
  end

  def union(other)
    uni = CustomSet.new
    elements.each { |ele| uni.add(ele) }
    other.elements.each { |ele| uni.add(ele) }
    uni
  end
end
