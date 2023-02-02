require 'pry'

class BoardCase
    attr_accessor :value, :position

    def initialize(number)
        position_base = ["A1","B1","C1","A2","B2","C2","A3","B3","C3"] #à refaire en plus joli
        @value = " "
        @position = position_base[number]
    end
end