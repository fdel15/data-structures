#http://rubymonk.com/learning/books/4-ruby-primer-ascent/chapters/33-advanced-arrays/lessons/86-stacks-and-queues

class Stack
  def initialize(size)
    @size = size
    @store = Array.new(@size)
    @top = -1
  end
  
  def pop
    if empty?
      nil
    else 
      item = @store[@top]
      @store[@top] = nil
      @top -= 1
      item
    end
  end
  
  def push(element)
    if full? or element.nil?
      nil
    else
      @top += 1
      @store[@top] = element
      self
    end
  end
  
  def size
    @size
  end
  
  def look
    @store[@top]
  end
  
  private
  
  def full?
    @top == (@size -1)
  end
  
  def empty?
    @top == -1
  end
end