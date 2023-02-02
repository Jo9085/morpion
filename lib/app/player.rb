require 'pry'

class Player
    attr_accessor :name, :symbol

    @@player_count = 0

    def initialize(name)
        @name = name
        @@player_count += 1

        (@@player_count % 2 == 0)? (@symbol = "X") : (@symbol = "O")
        
        puts "Hello #{@name}, bienvenue dans ce jeu de Morpion, ton symbole est #{@symbol}\n\n"
        #else 
            #puts "Sorry #{@name}, il y a déjà deux joueurs dans cette partie, reviens plus tard !"
    end


end

#binding.pry
#puts "end of the file"