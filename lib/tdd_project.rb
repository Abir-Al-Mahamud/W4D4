class Array 

    def my_uniq
        counter = Hash.new(0)
        self.each { |ele| counter[ele] += 1 }
        counter.keys
    end

end