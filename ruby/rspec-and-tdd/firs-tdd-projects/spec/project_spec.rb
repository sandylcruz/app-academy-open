require_relative "../lib/project.rb"

describe "my_uniq" do
  let(:array) { [1, 3, 4, 1, 3, 7] }
  let(:uniqued_array) { my_uniq(array.dup) }

  it "should take in an array" do
    expect { my_uniq([1, 2, 3]) }.to_not raise_error
  end

  it "should remove duplicates" do
    expect(my_uniq([4, 4, 5, 6])).to eq([4, 5, 6])
    expect(my_uniq([4, 4, 4, 4, 4])).to eq([4])
    expect(my_uniq([4, -4, 5, -6])).to eq([4, -4, 5, -6])
  end

  it "should return unique elements in order in which the appeared" do
    expect(my_uniq([4, 5, 4])).to eq([4, 5])
  end

  it "should not use the built-in #uniq" do
    array = [1, 2, 3]
    expect(array).to_not receive(:uniq)
    my_uniq(array)
  end

  it "should not return original array" do
    expect {
      my_uniq(array)
    }.to_not change{array}
  end
end

describe "two_sum" do
  it "should return pairs of positions" do
    result = two_sum([1, 2])

    all_items_are_pairs = result.all? do |pair| 
      pair.length == 2 && pair.all? { |item| item.kind_of? Integer }
    end

    expect(all_items_are_pairs).to be true
  end

  it "should select pairs where elements at those positions sum to zero" do
    result = two_sum([4, -4, 2, 3])
    expect(result).to eq([[0, 1]])
  end

  it "should be sorted small index before bigger index" do
    result = two_sum([4, -4, 3, -3])
    expect(result).to eq([[0, 1], [2, 3]])
  end

  it "should reuse numbers" do
    result = two_sum([4, -4, 4])
    expect(result).to eq([[0, 1], [1, 2]])
  end
end

# describe "my_transpose" do
#   it "transposes a matrix" do 
#     expect 
#   end
# end
# end

# describe "stock_picker" do
#   it "should find most profitable pair days" do
#     expect
#   end


#  end
