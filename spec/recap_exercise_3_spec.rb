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

describe "no_consecutive_repeats? method" do
    it "should accept an array as an argument" do 
        expect{no_consecutive_repeats?(['x'])}.to_not raise_error
    end

    it "should return true if an element never appears consecutively in the array" do 
        expect(no_consecutive_repeats?(['cat','dog','mouse','dog'])).to eq(true)
        expect(no_consecutive_repeats?(['cat','dog','dog','mouse'])).to eq(false)
        expect(no_consecutive_repeats?([10, 42, 3, 7, 10, 3])).to eq(true)
        expect(no_consecutive_repeats?([10, 42, 3, 3, 10, 3])).to eq(false)
        expect(no_consecutive_repeats?(['x'])).to eq(true)
    end

end