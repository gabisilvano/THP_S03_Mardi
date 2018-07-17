require 'pry'
require_relative 'player.rb'
require_relative 'boardcase.rb'
require_relative 'board.rb'

# Ceci est la classe du jeu entier
class Game
	attr_accessor :player1, :player2, :board

	def initialize
		puts "Bienvenu dans Tic-Tac-Toe !! "
		puts "-----------------------------"
		puts "Nom du joueur 1 : \n |>"
		play1 = gets.chomp
		@player1 = Player.new(play1,'x')
		puts "Nom du joueur 2 : \n |>"
		play2 = gets.chomp
		@player2 = Player.new(play2,'o')
		@board = Board.new
	end

	def launch
		i = 1
		while i <= 9
			if i.odd?
				@player1 # C'est lui qui joue
				puts "#{@player1.name} veuillez choisir votre case : \n |> "
				@board.conversion(gets.chomp.to_i)
				@board.grid[@board.abs][@board.ord].value(@player1.symb)
				@board.to_s
				i += 1	
			else
				@player2 # c'est le joueur 2 qui joue
				puts "#{@player2.name} veuillez choisir votre case : \n |> "
				@board.conversion(gets.chomp.to_i)
				@board.grid[@board.abs][@board.ord].value(@player2.symb)
				@board.to_s
				i += 1
			end
		end
	end

end

binding.pry
