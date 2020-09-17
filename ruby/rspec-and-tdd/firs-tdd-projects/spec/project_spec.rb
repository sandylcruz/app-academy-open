require_relative "../lib/project.rb"

describe "my_uniq" do
  it "should take in an array" do
    expect { my_uniq([1, 2, 3]) }.to_not raise_error
  end
end
  # it "should remove duplicates" do
  #   expect(my_uniq([4, 4, 5, 6]).to match_array([4, 5, 6]))
  #   expect(my_uniq([4, 4, 4, 4, 4]).to match_array([4)))
  #   expect(my_uniq([4, -4, 5, -6]).to match_array([4, -4, 5, -6]))
  # end

  # it "should return unique elements in order in which the appeared" do
  #   expect(my_uniq([4, 5, 4]).to match_array([4, 5]))
  # end

  # it "should return a new array" do 
  #   expect(my_uniq([1, 2, 3]).to )
  # end

  # it "should not use the built-in #uniq" do
  #   array = [1, 2, 3]
  #   expect(array).to_not receive(:uniq)
  #   my_uniq(array)
  # end

describe "two_sum" do
  it "should return all pairs of positions where leemnts at those positions sum to zero" do
    expect[-1, 0, 2, -2, 1].two_sum # => [[0, 4], [2, 3]]
  end
end