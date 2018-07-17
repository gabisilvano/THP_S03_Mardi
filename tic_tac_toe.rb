require 'pry'

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

# Ceci est la gestion de chaque
# case du tableau de jeu
class BoardCase
  attr_writer :value

  def initialize
    @value = ''
  end

  def value(value)
    if @value == ''
      # binding.pry
      until 'xo'.include?(value.downcase.to_s)
        # binding.pry
        puts "Ne pas jouer autre chose que 'x' ou 'o' \n |> "
        value = gets.chomp.to_s.downcase
      end
      @value = value.downcase
    else
      puts "C'est moi ou vous essayez de tricher ?"
      @value
    end
  end
end

# Ceci est la classe des joueurs
class Player
end

# Ceci est la classe du jeu entier
class Game
end

binding.pry
