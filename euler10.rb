class Candidates
  include Enumerable

  def initialize
    @base = 10
  end

  def each
    loop do
	p "Candidates.each"
      [1,3,7,9].each { |i| yield @base + i }
      @base += 10
    end
  end
end

class Euler10
  include Enumerable

  def initialize()
    @primearr = [2,3,5,7]
    @candidates = Candidates.new()
  end

  def each
	p "Euler10.each"
    @primearr.each { |i|
		p "primearr.each: #{i}" 
		yield i }
    @candidates.each { |candidate|
      p "candidate: #{candidate}"
      root = Math.sqrt candidate
      testelem = @primearr.find { |i| (i > root) || (candidate % i == 0) }
      if testelem > root
        @primearr << candidate
        yield candidate
      end
    }
  end
end

#puts Euler10.new().take_while {|i| i < 2000000}.reduce(:+)
puts Euler10.new().take_while {|i| i < 20}.reduce(:+)
