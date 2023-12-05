require "recap_exercise_3"

describe "no_dupes? method" do
    it "should accept an array as an argument" do 
        expect { no_dupes?([1,1,2,1,3,2,4]) }.to_not raise_error  
    end

    it "should return a new array containing elements that were not repeated in the array" do
        expect(no_dupes?([1,1,2,1,3,2,4])).to eq([3,4])
        expect(no_dupes?(['x','x','y','z','z'])).to eq(['y'])
        expect(no_dupes?([true, true, true])).to eq([])
    end
end