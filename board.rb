require 'pry'
require_relative 'boardcase.rb'

# Ceci est le plateau de jeu
class Board
  attr_accessor :grid, :abs, :ord

  def initialize
    col1 = [BoardCase.new(1), BoardCase.new(2), BoardCase.new(3)]
    col2 = [BoardCase.new(4), BoardCase.new(5), BoardCase.new(6)]
    col3 = [BoardCase.new(7), BoardCase.new(8), BoardCase.new(9)]
    @grid = [col1, col2, col3]
    @abs = -1
    @ord = -1
  end

  def to_s
    puts " #{@grid[0][0].to_s} | #{@grid[0][1].to_s} | #{@grid[0][2].to_s}"
    puts "------------"
    puts " #{@grid[1][0].to_s} | #{@grid[1][1].to_s} | #{@grid[1][2].to_s}"
    puts "------------"
    puts " #{@grid[2][0].to_s} | #{@grid[2][1].to_s} | #{@grid[2][2].to_s}"
  end

  def conversion(int)
    (int % 3).zero? ? @ord = 2 : @ord = (int % 3).to_i - 1
    @abs = ((int / 3.0).ceil - 1.0).to_i
  end
end

# binding.pry
