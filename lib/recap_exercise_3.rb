
# Accepts an array as an arg and returns a new array  containing the elements that wer not repeated in the array
def no_dupes?(arr)
    dupe_regastry = Hash.new
    arr.each do |val|
        dupe_regastry[val] += 1 if dupe_regastry[val] != nil 
        dupe_regastry[val] = 1 if dupe_regastry[val] == nil
    end 
    dupe_regastry.select { | key, val| val == 1 }.keys
end

def no_consecutive_repeats?(arr)
    (1...arr.length - 1).each do |idx| 
        return false if arr[idx] == arr[idx - 1]
    end 
    return true
end

def char_indices(str) 
    indices_hash = Hash.new  {|h, k| h[k] = []}
    str.split("").each_with_index {|char, idx| indices_hash[char] << idx }
    indices_hash
end