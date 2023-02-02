require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib/app", __FILE__)
require 'game'
require 'player'
require 'board'
require 'board_case'
#require 'application'
#require 'show'

puts "\n\n\n"

puts " ███ ███     ████    ███████   ███████  ██    ████    ██-_  ██".center(200)
puts "██  █  ██  ██    ██  ██____█   ██___██  ██  ██    ██  ██  █_██".center(200)
puts "██     ██  ██    ██  ██    ██  ██       ██  ██    ██  ██    ██".center(200)
puts "██     ██    ████    ██    ██  ██       ██    ████    ██    ██".center(200)

other_game = 'y'
puts "\n\n\n"

puts "Bienvenue dans le jeu !".center(200)

puts "Qui est le premier joueur présent ?"
print '> '
name1 = gets.chomp

puts "Enchanté, #{name1} ! et qui est ton adversaire ? "
print '> '
name2 = gets.chomp

puts "\n\n Let the fun begin \u{1f60e}\n\n"

while other_game == 'y' 
    new_game = Game.new(name1,name2)

    while new_game.is_still_ongoing?
        new_game.display_next_round
        value_choice = gets.chomp
        new_game.result_next_round(value_choice)
    end

    new_game.end
    other_game = gets.chomp.downcase
end

puts "See you next time, amigos ! \u{1f42e}"
binding.pry