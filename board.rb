require 'pry'
require_relative 'boardcase.rb'

# Ceci est le plateau de jeu
class Board
  attr_accessor :grid

  def initialize
    col1 = [BoardCase.new, BoardCase.new, BoardCase.new]
    col2 = [BoardCase.new, BoardCase.new, BoardCase.new]
    col3 = [BoardCase.new, BoardCase.new, BoardCase.new]
    @grid = [col1, col2, col3]
  end

  def to_s
    puts " #{@grid[0][0].to_s} | #{@grid[0][1].to_s} | #{@grid[0][2].to_s}"
    puts "------------"
    puts " #{@grid[1][0].to_s} | #{@grid[1][1].to_s} | #{@grid[1][2].to_s}"
    puts "------------"
    puts " #{@grid[2][0].to_s} | #{@grid[2][1].to_s} | #{@grid[2][2].to_s}"
  end
end

binding.pry
