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

class TowersOfHanoi
    attr_reader :stacks 

    def initialize 
        @stacks = [[3, 2, 1],[],[]]
        @max_moves = 9
    end

    def move
        while @max_moves != 0 || !won? 
            begin 
                puts "Choose an origin stack"
                origin = gets.chomp.to_i
                puts "Choose a destination stack"
                destination = gets.chomp.to_i

                if @stacks[destination].last < @stacks[origin].last
                    raise StandardError.new("No smaller elements can be below larger elements")
                end

                @stacks[destination] << @stacks[origin].pop 
                @max_moves -= 1
                puts "#{@stacks}"
            rescue
                retry
            end
        end
        puts "YOU WON"
    end

    def won? 
        @stacks == [[],[],[3, 2, 1]] || @stacks == [[],[3, 2, 1],[]]
    end
end