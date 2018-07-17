require 'pry'
require 'boardcase.rb'

# Ceci est le plateau de jeu
class Board
  attr_accessor :grid

  def initialize
    col1 = [BoardCase.new, BoardCase.new, BoardCase.new]
    col2 = [BoardCase.new, BoardCase.new, BoardCase.new]
    col3 = [BoardCase.new, BoardCase.new, BoardCase.new]
    @grid = [col1, col2, col3]
  end
end

binding.pry
