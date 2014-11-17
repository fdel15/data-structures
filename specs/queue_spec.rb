require_relative '../source/queue'

describe Queue do
  let(:size)  { 10 }
  let(:queue) { Queue.new( size ) }

  describe "#enqueue"  do 
    it "should add an element to the queue" do
      queue.enqueue('a')
    end

    it "Should add the elements in order" do
      queue.enqueue('a')
      queue.enqueue('b')
      queue.enqueue('c')
    end

    it "Should know when the queue is full" do
      size.times{|x| queue.enqueue(x) }
      expect( queue.enqueue('tomany') ).to be_nil
    end
  end

  describe "#dequeue" do
    it "Should Return nil if queue is empty" do
      expect( queue.dequeue ).to be_nil
    end

    it "should Return the first element of the queue" do 
      queue.enqueue('paper')
      expect( queue.dequeue ).to eq('paper')
    end

    it "should return items in the queue... Fist in Last Out" do 
      4.times{ |x| queue.enqueue("paper*#{x}") }
      expect( queue.dequeue ).to eq("paper*0")
    end
  end

  describe "#size" do 
    it "should know the size of the queue" do
      expect( queue.size ).to be size
    end
  end  
end