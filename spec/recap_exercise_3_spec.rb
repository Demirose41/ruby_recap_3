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

describe "char_indices" do 
    it "should accept a string as an arguement" do 
        expect{char_indices("california")}.to_not raise_error
    end

    it "should return a hash containing characters as keys. The value associated with each key should be an array containing the indices where that character is found" do
        expect(char_indices("mississippi")).to eq({"m"=>[0], "i"=>[1, 4, 7, 10], "s"=>[2, 3, 5, 6], "p"=>[8, 9]})
        expect(char_indices("classroom")).to eq({"c"=>[0], "l"=>[1], "a"=>[2], "s"=>[3, 4], "r"=>[5], "o"=>[6, 7], "m"=>[8]})
    end
end

describe "longest_streak(str)" do
    it "should accept a string as an arg" do 
        expect{longest_streak("x")}.to_not raise_error
    end

    it "should return the longest streak of consecutive characters in the string." do 
        expect('a')
        expect('accccbbb')
        expect('aaaxyyyyyzz')
    end

    it "should return the streak that occurs later in the string if there are any ties" do
        expect(longest_streak('aaabbb')).to eq('bbb')
        expect(longest_streak('abc')).to eq('c')
    end

end

describe "bi_prime?" do 
    it 'should accept a number as an arg' do
        expect{bi_prime?(14)}.to_not raise_error
    end

    it "should return a boolean indicating whether or not the number is a bi-prime." do
        expect(bi_prime?(14)).to eq(true)
        expect(bi_prime?(22)).to eq(true)
        expect(bi_prime?(25)).to eq(true)
        expect(bi_prime?(94)).to eq(true)
        expect(bi_prime?(24)).to eq(false)
        expect(bi_prime?(64)).to eq(false)
    end
end

describe "vigenere_cipher" do 
    it 'should accepts a string and a key-sequence as arguements' do 
        expect{vigenere_cipher('WangDangDoodle', [1])}.to_not raise_error
    end

    it "should take a word and encrpyt it by offsetting each letter in the word by a fixed key number" do
        expect(vigenere_cipher("toerrishuman", [1])).to eq("upfssjtivnbo")
        expect(vigenere_cipher("toerrishuman", [1, 2])).to eq("uqftsktjvobp")
        expect(vigenere_cipher("toerrishuman", [1, 2, 3])).to eq("uqhstltjxncq")
        expect(vigenere_cipher("zebra", [3, 0])).to eq("ceerd")
        expect(vigenere_cipher("yawn", [5, 1])).to eq("dbbo")
    end 
end

describe "vowel_rotate" do 

    it "should accept a str as an arg" do 
        expect{vowel_rotate("computer")}.to_not raise_error
    end

    it "should return the string where every vowel is replaced wit the vowel that appears before it sequentially" do
        expect(vowel_rotate('computer')).to eq("cempotur")
        expect(vowel_rotate('oranges')).to eq('erongas')
        expect(vowel_rotate('headphones')).to eq('heedphanos')
        expect(vowel_rotate('bootcamp')).to eq('baotcomp')
        expect(vowel_rotate('awesome')).to eq('ewasemo')
    end
end

describe "String#select" do 
    it "should accept a block " do 
        expect{"app acadamy".select { |ch| !"aeiou".include?(ch) }}.to_not raise_error
    end

    it "should return a new string containing characters of the original that return true when passed into the block" do
        expect("app acadamy".select { |ch| !"aeiou".include?(ch) }).to eq("pp cdmy")
        expect("HELLOworld".select { |ch| ch == ch.upcase }).to eq("HELLO")
    end

    it "should return the empty string if no block is passed" do 
        expect("HELLOworld".select).to eq ("")
    end
end

describe "String#map!" do
    it "should accept a block" do 
        expect{"Lovelace".map! { |char| p char}}.to_not raise_error
    end

    it "should modify the existing string by replacing every character with the result of calling the block, passing in the original character and it's index" do
        let test_1 = "Lovelace"
        test_1.map! do |ch|
            if ch == 'e'
                '3'
            elsif ch == 'a'
                '4'
            elements
                ch
            end
        end
        
        expect(test_1).to eq('Lov3l4c3')
    end


end