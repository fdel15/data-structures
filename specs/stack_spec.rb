require_relative '../source/stack'

describe Stack do
  
  let(:size)  { 10 }
  let(:stack) { Stack.new(size) }

  describe "#push"  do 
    it "should add an element to the stack" do
      stack.push('a')
      expect( stack.look ).to eq('a')
    end

    it "Should add the elements in order" do
      stack.push('a')
      stack.push('b')
      stack.push('c')
      expect( stack.look ).to eq('c')
    end

    it "Should know when the stack is full" do
      size.times{|x| stack.push(x) }
      expect( stack.push('tomany') ).to be_nil
    end
  end

  describe "#pop" do
    it "Should Return nil if stack is empty" do
      expect( stack.pop ).to be_nil
    end

    it "should Return the first element of the stack" do 
      stack.push('paper')
      expect( stack.pop ).to eq('paper')
    end

    it "should return items in the stack... First in Last Out" do 
      4.times{ |x| stack.push("paper*#{x}") }
      expect( stack.pop ).to eq("paper*3")
    end
  end

  describe "#size" do 
    it "should know the size of the stack" do
      expect( stack.size ).to be size
    end
  end
end

