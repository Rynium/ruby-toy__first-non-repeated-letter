# This method takes a string, str, and returns the first non-repeated letter in that string.
# More specifically, it looks for the first letter that appears by itself.
#
# + "ddcdd" has 'c' as its first non-repeated letter, and thus returns 'c'
# + "aabccd" has both 'b' and 'd' as non-repeating letters, but would return 'b' because that
#   one occurs first
# + "aabbaa" only has repeated letters (two pairs of 'a', and a pair of 'b'), and thus returns
#   nil (since there does not exist a non-repeated letter)


def find_first_non_repeated_letter(str)
    first = nil
    
    i = 0 
    while i < str.length
        if i == 0 && str[i] != str[i + 1]
            first = str[i]
            break
            
        elsif (i != 0 && i != str.length-1) && (str[i] != str[i+1] && str[i] != str[i-1])
            first = str[i]
            break
            
        elsif i == str.length-1 && str[i] != str[i - 1]
            first = str[i]
            break
        end
    i +=1
    end
    first
end
  