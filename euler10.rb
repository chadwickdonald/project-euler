class Candidates
  include Enumerable

  def initialize

    @base = 10
  end

  def each
    loop do
      [1,3,7,9].each { |i| yield @base + i }
      @base += 10
    end
  end
end

class Euler10
	puts "hi"
  include Enumerable

  def initialize()
    @primearr = [2,3,5,7]
    @candidates = Candidates.new()
  end

  def each
    @primearr.each { |i| yield i }
    @candidates.each { |candidate|
      
      root = Math.sqrt candidate
      testelem = @primearr.find { |i| (i > root) || (candidate % i == 0) }
      if testelem > root
        @primearr << candidate
        yield candidate
      end
    }
  end
end

puts Euler10.new().take_while {|i| i < 2000000}.reduce(:+)
