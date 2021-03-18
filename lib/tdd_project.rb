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

    def my_transpose
        (0...self.length).map do |i|
            self.map { |arr| arr[i] } 
        end
    end

    def stock_picker 
        pairs = [[0,0]]
        self.each_with_index do |ele1, idx1|
            self.each_with_index do |ele2, idx2|
                if idx2 > idx1 && ele2 > ele1
                    if (ele2 - ele1) > (pairs.last.last - pairs.last.first)
                        pairs << [ele1, ele2]
                    end
                end
            end
        end
        [self.index(pairs[-1].first), self.index(pairs[-1].last)]
    end

end