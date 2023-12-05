
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

def longest_streak(str) 
    count = Hash.new { |h,k| h[k] = 0 }
    str.split("").each do |char| 
        count[char] += 1 
    end
    count.max[0] * count.max[1] 
end


def bi_prime?(num)
    (2...num).each do |x| 
        (2...num).each do |y|
            return true if x * y == num && prime?(x) && prime?(y)
            next if x * y > num
        end
    end
    false
end 

def prime?(num)
    temp = 0 
    (2..num/2).each do |idx| 
        return false if num % idx == 0  
    end
    true
end

def vigenere_cipher(str, key)
    alph = Hash.new 
    key_length = key.length
    key_idx = 0  
    ("a".."z").each_with_index { |char, idx| alph[char] = idx + 1 }

    split_str = str.downcase.split("")
    new_str_arr = []
    split_str.each do |char|
        char_idx = alph[char]
        temp_idx = char_idx + key[key_idx]
        temp_idx < 27 ? new_idx = temp_idx : new_idx = temp_idx - 26
        new_str_arr << alph.key(new_idx)
        key_idx += 1 
        key_idx = 0 if key_idx >= key_length
    end
    new_str_arr.join
end