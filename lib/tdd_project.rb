class Array 

    def my_uniq
        counter = Hash.new(0)
        self.each { |ele| counter[ele] += 1 }
        counter.keys
    end

    def two_sum 
        locations = []

        self.each_with_index do |ele1, idx1|
            self.each_with_index do |ele2, idx2|
                if idx2 > idx1 && ele1 + ele2 == 0
                    locations << [idx1, idx2]
                end
            end
        end

        locations
    end

end