
# Accepts an array as an arg and returns a new array  containing the elements that wer not repeated in the array
def no_dupes?(arr)
    dupe_regastry = Hash.new
    arr.each do |val|
        dupe_regastry[val] += 1 if dupe_regastry[val] != nil 
        dupe_regastry[val] = 1 if dupe_regastry[val] == nil
    end 
    dupe_regastry.select { | key, val| val == 1 }.keys
end