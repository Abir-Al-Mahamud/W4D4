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

        

        end


end
