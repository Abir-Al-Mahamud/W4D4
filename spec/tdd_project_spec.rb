require "tdd_project"
describe Array do 
    describe "#my_uniq" do 

        subject(:array) { [1,2,3,3,4,4,5,5,5] }
        
        it "should be called on an array" do 
            expect(array.class).to eq(Array)
        end

        it "should remove any duplicates" do 
            expect(array.my_uniq).to eq([1,2,3,4,5])
        end

        it "should return a new array" do
            expect(array.my_uniq).to_not be(array)
        end

    end

    describe "#two_sum" do
        let(:array2) { [-1, 0, 2, -2, 1] }
        
        it "should find all pairs of positions that sum to 0" do 
            expect(array2.two_sum).to eq([[0, 4], [2, 3]])
        end

        it "should sort pairs from smaller index before bigger index" do 
            expect(array2.two_sum).to eq(array2.two_sum.sort)
        end

        it "should sort pairs from smaller second elements first" do 
            expect(array2.two_sum.first).to eq(array2.two_sum.first.sort)
        end

        it "should not have any duplicate elements" do 
            array3 = [[0, 4], [1, 1], [2, 3], [3, 2], [4, 0]]
            expect(array2.two_sum).to_not eq(array3)
        end

    end

    describe "#my_transpose" do 
        subject(:array) { [
                            [0, 1, 2],
                            [3, 4, 5],
                            [6, 7, 8]
                          ] }  
        let(:cols) {    [
                            [0, 3, 6],
                            [1, 4, 7],
                            [2, 5, 8]
                        ] }

        it "should convert rows into columns" do
            expect(array.my_transpose).to eq(cols)
        end

        it "should return a 2D-array of the same length" do
            expect(array.my_transpose.length).to eq(array.length)
        end

        it "each rows length should remain the same as before" do 
            bool = array.my_transpose.all? { |row| row.length == array.first.length }
            expect(bool).to be true
        end

    end

    describe "#stock_picker" do
        subject(:array) { [150, 30, 2, 50, 70, 100, 80, 120] }

        context "when output is most profitable pair of days" do 
            it "should first buy the stock and then sell the stock" do 
                expect(array.stock_picker.first).to be < array.stock_picker.last
                expect(array.stock_picker).to eq([2, 7])
            end

        end

    end

    
    
end

describe TowersOfHanoi do 
    subject(:array) { [[3,2,1],[],[]] }
    let(:wrong) { [[3],[1,2],[]] }

    describe "#initialize" do 
    
        context "should be called on a 2-D array of 3 sub-arrays" do
            it "the first sub-array should half 3 numbers of decreasing order" do
                expect(array.first).to eq(array.first.sort.reverse)
                expect(array.length).to eq(3)
            end
        end
        
        context "smaller elements can never be below larger elements" do 
            it "should raise error when user tries to put larger element on top of smaller element" do 
                bool = array.all? { |stack| stack.sort.reverse == stack }
                expect(bool).to be true 
                expect { bool == false }.to raise_error(StandardError)
            end
        end

    end

    describe "#move" do 
        it "should prompt the user (gets)"  do 
            expect(:move).to receive(gets.chomp)
        end
    end

    describe "#won?" do 
        it "should have a pile of discs on another pole" do 
            bool = (array[0].empty? && array[1].empty?) || (array[0].empty? && array[2].empty?)
            expect(bool).to be true 
        end
    end
end