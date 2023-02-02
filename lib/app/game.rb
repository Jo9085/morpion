require 'pry'
require 'player'
require 'board'
require_relative '../views/show.rb'

class Game
    attr_accessor :board, :game_count, :players, :winner

    def initialize(name1,name2)
        player1 = Player.new(name1)
        player2 = Player.new(name2)
        @board = Board.new
        r = rand(0..1)
        if r == 0
            @players =[player1, player2]
        elsif r == 1
            @players =[player2, player1]
        end
        @@winner =''

        @@game_count = 0 #initialise le nombre de coups joués dans le jeu
    end

    def display_next_round

        display_board

        puts "\nOK #{whos_next.name}, voici l'état du tableau tableau, et c'est à ton tour de jouer !"

        puts "Où veux tu placer ton #{whos_next.symbol} ?"
        print '> '
    end

    def whos_next
            (@@game_count % 2 == 0)? (return @players[0]) : (return @players[1])
    end

    def result_next_round(value_choice)
        board.players_choice(value_choice,whos_next.symbol)
        (do_we_have_a_winner)? (@@winner = whos_next.name) : nil
        @@game_count += 1
    end

    def is_still_ongoing?
        (@@game_count < 9 && @@winner == '')? true : false
    end

    def do_we_have_a_winner
        return board.check_winner
    end

    def display_board
        board.show_board
    end

    def end
        if @@winner != ''
            display_board

            puts "Bravo #{@@winner}, tu as gagné !! \u{1F973}\n\n"

            puts "█      █  ██   █████  ████████    ████    ██  ███████   ██████   █"  
            puts " █    █   ██  ██         ██     ██    ██  ██  ██____█   ██___    █"
            puts "  █  █    ██  ██         ██     ██    ██  ██  ██    ██  ██        " 
            puts "   ██     ██   █████     ██       ████    ██  ██    ██  ██████   █"

        else
            puts "Match nul les amis..."
        end

        puts "\n\nVoulez vous refaire une autre partie ? (Y/N)"
    end

end