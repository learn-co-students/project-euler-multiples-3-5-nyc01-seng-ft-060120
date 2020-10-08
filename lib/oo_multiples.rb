# Enter your object-oriented solution here!
 
class Multiples
    attr_accessor :lim
    def initialize(lim)
        if !lim
            raise ArgumentError.new "Need a limit parameter"
        else
            @lim=lim
        end
    end
    def collect_multiples
        col = []
        (1...@lim).each do |num|
            if num%3===0 || num%5===0
                col << num
            end
        end
        col
    end
    def sum_multiples
        self.collect_multiples.reduce(0) { |sum, num| sum+num }
    end 
end