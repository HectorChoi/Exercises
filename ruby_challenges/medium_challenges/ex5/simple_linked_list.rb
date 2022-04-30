=begin
Singly linked list. Each element in the list contains data and a `next` field
pointing to the next element in the list of elements. LIFO stack: Last in,
First out

Let's create a singly linked list whose elements may contain a range of data
such as the numbers 1-10. Provide functions to reverse the linked list and
convert a linked list to and from an Array.

Two classes: Element and SimpleLinkedList

Element: contain data and a `next` field pointing to the next element in the
list of elements
  methods:
    constructor

    tail?
    - return true if the calling Element is the tail (first element)
    - false otherwise

    next
    - nil if Element has no next value it is linked to
    - otherwise, point to the datum of the next element

    datum
    - the `value` of the element

SimpleLinkedList:
  methods:
    constructor

    empty?

    push(datum)

    peek

    head

    size

    pop

    from_a
    - input can be an array or nil

    to_a

    reverse
=end

class Element
  attr_reader :datum
  attr_accessor :next_element

  def initialize(datum, next_element = nil)
    @datum = datum
    @next_element = next_element
  end

  def tail?
    @next_element.nil?
  end

  def next
    next_element
  end
end

class SimpleLinkedList
  def initialize
    @elements = []
  end

  def size
    @elements.size
  end

  def empty?
    size == 0
  end

  def push(datum)
    new_element = Element.new(datum, @elements[-1])
    @elements.push(new_element)
  end

  def peek
    if @elements[-1].nil?
      nil
    else
      @elements[-1].datum
    end
  end

  def head
    @elements[-1]
  end

  def pop
    @elements.pop.datum
  end

  def self.from_a(input)
    if input.instance_of? Array
      list = SimpleLinkedList.new
      input.reverse.each { |ele| list.push(ele) }
      list
    else
      SimpleLinkedList.new
    end
  end

  def to_a
    @elements.reverse.map(&:datum)
  end

  def reverse
    SimpleLinkedList.from_a(to_a.reverse)
  end
end
