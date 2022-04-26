=begin
Problem:
  Create a CircularQueue class that implements a circular queue for arbitrary
objects
  The class should obtain the buffer size with an argument provided to
CircularQueue::new, and should provide the following methods:
  - enqueue
    to add an object to the queue
  - dequeue
    to remove (and return) the oldest object in the queue. return `nil` if the
  queue is empty

rules:
  - you may assume that none of the values stored in the queue are `nil`
  - however, `nil` may be used to designate empty spots in the buffer

mm:
  - keep track of both the next position (where the next value stored will go)
  as well as the oldest position (where the oldest value is stored)
  - whenever you enqueue a new object, keep track of these values and formulate
  the logic for them accordingly
  - be careful about updating the oldest_position - only do so if you're getting
  rid of an object in the queue
=end

class CircularQueue
  def initialize(size)
    @buffer = [nil] * size
    @next_position = 0
    @oldest_position = 0
  end

  def enqueue(object)
    # try to fill in the logic here without looking at the solution
    unless @buffer[@next_position].nil?
      @oldest_position = increment(@next_position)
    end

    @buffer[@next_position] = object
    @next_position = increment(@next_position)
  end

  def dequeue
    # same
    oldest = @buffer[@oldest_position]
    @buffer[@oldest_position] = nil
    @oldest_position = increment(@oldest_position) unless oldest.nil?
    oldest
  end

  private

  def increment(position)
    (position + 1) % @buffer.size
  end
end

queue = CircularQueue.new(3)
puts queue.dequeue.nil?

queue.enqueue(1)
queue.enqueue(2)
puts queue.dequeue == 1

queue.enqueue(3)
queue.enqueue(4)
puts queue.dequeue == 2

queue.enqueue(5)
queue.enqueue(6)
queue.enqueue(7)
puts queue.dequeue == 5
puts queue.dequeue == 6
puts queue.dequeue == 7
puts queue.dequeue.nil?

queue = CircularQueue.new(4)
puts queue.dequeue.nil?

queue.enqueue(1)
queue.enqueue(2)
puts queue.dequeue == 1

queue.enqueue(3)
queue.enqueue(4)
puts queue.dequeue == 2

queue.enqueue(5)
queue.enqueue(6)
queue.enqueue(7)
puts queue.dequeue == 4
puts queue.dequeue == 5
puts queue.dequeue == 6
puts queue.dequeue == 7
puts queue.dequeue.nil?
