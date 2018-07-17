require 'pry'

# Ceci est le plateau de jeu
class Board
end

# Ceci est la gestion de chaque
# case du tableau de jeu
class BoardCase
  attr_writer :value

  def initialize
    @value = ''
  end

  def value(value)
    value.downcase!
    if !'xo'.include?(value)
      while !'xo'.include?(value)
        puts "Ne pas jouer autre chose que 'x' ou 'o' "
        print '|> '
        value = gets.chomp.to_s.downcase
      end
    end
    if @value == ''
      @value = value 
    else
      puts "C'est moi où vous essayez de tricher ?"
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
