#http://rubymonk.com/learning/books/4-ruby-primer-ascent/chapters/33-advanced-arrays/lessons/86-stacks-and-queues
class Queue
  def initialize(size)
    @size = size
    @store = Array.new(@size)
    @head = -1 
    @tail = 0
  end
  
  def dequeue
    if empty?
      nil
    else
      @tail += 1

      dequeued = @store[@head]
      @store.unshift(nil)
      @store.pop
      dequeued
    end
  end
  
  def enqueue(element)
    if full? or element.nil?
      nil
    else
      @tail -= 1
      @store[@tail] = element
      self 
    end
  end
  
  def size
    @size
  end
  
  private
  
  def empty?
    @head == -1 and @tail == 0
  end

  def full?
    @tail.abs == (@size)
  end
end