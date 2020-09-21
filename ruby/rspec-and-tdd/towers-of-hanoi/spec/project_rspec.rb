require 'rspec'
require_relative '../lib/project.rb'

describe "#initialize" do
  let(:game) { Game.new }

  it "initializes correct items in stack" do
    expect(game.stacks).to eq([[1, 2, 3], [], []])
  end
end

describe "#valid_move?" do
  let(:game) { Game.new }

  it "should return false if you try to move an empty source column" do
    expect(game.valid_move?(1, 2)).to eq(false)
  end

  it "should return true if source column is not empty" do
    expect(game.valid_move?(0, 2)).to eq(true)
  end

  it "should return true if destination column is not empty" do
    expect(game.valid_move?(0, 2)).to eq(true)
  end

  it "should return true if destination column contains a number but is greater than source number" do
    expect(game.valid_move?(0, 2)).to eq(true)
  end

  it "should return false if user enters something other than the numbers 0, 1, 2 for source" do 
    expect(game.valid_move?(7, 2)).to eq(false)
  end

  it "should return false if user enters something other than the numbers 0, 1, 2 for destination" do
    expect(game.valid_move?(0, 7)).to eq(false)
  end
end

describe "#empty?" do
  let(:game) { Game.new }

  it "should return true if location is empty" do
    expect(game.empty?(1)).to eq(true)
  end

  it "should return false if location is not empty" do
    expect(game.empty?(0)).to eq(false)
  end
end

describe "#move" do
  let(:game) { Game.new }
  
  it "should move item from source to destination" do
    game.move(0, 1)
    expect(game.stacks).to eq([[2, 3], [1], []])
  end

  it "should move item from source to destination if move is invalid" do
    game.move(0, 7)
    expect(game.stacks).to eq([[1, 2, 3], [], []])
  end
end

