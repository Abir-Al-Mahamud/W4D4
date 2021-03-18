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
end