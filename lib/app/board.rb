require 'pry'
require 'board_case'
require_relative '../views/show.rb'


class Board
    attr_accessor :case, :show

    def initialize
        @case = []
        @show = Show.new

        9.times do |i|
            new_case = BoardCase.new(i)
            @case << new_case
        end
        #puts @case[1].position
    end

    def players_choice(value_choice, symbol)
        test_value = 0
        i = 0

        while test_value == 0
            if i > 0
                puts "Cette case est déjà prise ou n'existe pas, try again"
                print '> '
                value_choice = gets.chomp
            end

            @case.each do |cases|
                if cases.position == value_choice && cases.value == " " 
                    cases.value = symbol
                    test_value = cases.position
                end
            end

            i += 1
        end


        #puts @case[2].value
    end

    def check_winner
        value = false

        (0..2).each do |i| #check colonnes
            if @case[i].value == @case[i+3].value && @case[i].value == @case[i+6].value && @case[i].value != " "
                value = true
            end
        end

        [0,3,6].each do |i| #check lignes
            if (@case[i].value == @case[i+1].value) && (@case[i].value == @case[i+2].value) && (@case[i].value != " ")
                value = true
            end
        end

        if @case[0].value == @case[4].value && @case[0].value == @case[8].value && @case[0].value != " "
                value = true
        elsif @case[2].value == @case[4].value && @case[2].value == @case[6].value && @case[2].value != " "
                value = true
        end

        return value
    end
        

    def show_board
        show.show_board(@case)
    end
end