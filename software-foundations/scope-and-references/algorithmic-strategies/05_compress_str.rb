=begin
Write a method, compress_str(str), that accepts a string as an 
arg. The method should return a new str where streaks of 
consecutive characters are compressed.
For example "aaabbc" is compressed to "3a2bc".
=end

# def compress_str(str)
#   compressed = ""
#   i = 0

#   while i < str.length 
#     char = str[i]
#     count = 0

#     while char == str[i]
#       count += 1
#       i += 1
#     end
    
#     if count > 1
#       count_to_add = count.to_s + char
#       compressed += count_to_add
#     else
#         compressed += char
#     end
#   end
#   compressed
# end

def get_compressed_tail(xs = "", current_char, current_count, acc)
  if xs.length == 0
    return acc + current_char if current_count == 1
    return acc + current_count.to_s + current_char if xs.length == 0
  end
  return acc if xs.length == 0 
  return get_compressed_tail(xs[1..-1], xs[0], current_count + 1, acc) if xs[0] == current_char
  get_compressed_tail(xs[1..-1], xs[0], 1, acc + current_count.to_s + current_char)

end

def compress_str(str)
 get_compressed_tail(str[1..-1], str[0], 1, "")
end

p compress_str("aaabbc")        # => "3a2bc"
p compress_str("xxyyyyzz")      # => "2x4y2z"
p compress_str("qqqqq")         # => "5q"
p compress_str("mississippi")   # => "mi2si2si2pi"