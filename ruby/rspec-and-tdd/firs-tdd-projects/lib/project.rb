
def uniq(array)
  new_array = []

  array.each do |number|
    if !new_array.include?(number)
      new_array << number
    end
  end
  new_array
end

=begin
Write a new Array#two_sum method that finds all pairs of 
positions where the elements at those positions sum to zero.

NB: ordering matters. We want each of the pairs to be sorted 
smaller index before bigger index. We want the array of pairs 
to be sorted "dictionary-wise":
=end


def two_sum
end


=begin
Write a method, my_transpose, which will convert between the 
row-oriented and column-oriented representations. You may 
assume square matrices for simplicity's sake. Usage will 
look like the following:
  my_transpose([
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8]
    ])
  # => [[0, 3, 6],
  #    [1, 4, 7],
  #    [2, 5, 8]]
=end

def my_transpose
end

=begin
Write a method that takes an array of stock prices (prices 
on days 0, 1, ...), and outputs the most profitable pair 
of days on which to first buy the stock and then sell 
the stock. Remember, you can't sell stock before you buy it!
=end

def stock_picker
end
