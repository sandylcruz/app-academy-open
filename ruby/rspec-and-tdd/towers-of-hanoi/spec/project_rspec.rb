require 'rspec'
require 'project.rb'

describe "initialize" do
  game = Game.new

  it "initializes correct items in stack" do
    expect(game.stacks).to eq('[[1, 2, 3], [], []]')
  end
end

end