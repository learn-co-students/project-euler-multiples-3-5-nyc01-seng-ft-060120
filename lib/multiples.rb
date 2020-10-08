# Enter your procedural solution here!

def collect_multiples(lim)
    col = []
    (1...lim).each do |num|
        if num%3===0 || num%5===0
            col << num
        end
    end
    col
end

def sum_multiples(lim)
    if !lim
        raise ArgumentError
    end
    collect_multiples(lim).reduce(0) { |sum, num| sum+num }
end 