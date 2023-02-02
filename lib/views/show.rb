
class Show

    def initialize

    end
    def show_board(cases)
        puts "A1                  |B1                  |C1                       ".center(200)
        puts "                    |                    |                         ".center(200)
        puts "         #{cases[0].value}          |         #{cases[1].value}          |         #{cases[2].value}          ".center(194)
        puts "                    |                    |                         ".center(200)
        puts "                    |                    |                         ".center(200)
        puts ("-" * 60).center(192)
        puts "A2                  |B2                  |C2                       ".center(200)
        puts "                    |                    |                         ".center(200)
        puts "         #{cases[3].value}          |         #{cases[4].value}          |         #{cases[5].value}          ".center(194)
        puts "                    |                    |                         ".center(200)
        puts "                    |                    |                         ".center(200)
        puts ("-" * 60).center(192)
        puts "A3                  |B3                  |C3                       ".center(200)
        puts "                    |                    |                         ".center(200)
        puts "         #{cases[6].value}          |         #{cases[7].value}          |         #{cases[8].value}          ".center(194)
        puts "                    |                    |                         ".center(200)
        puts "                    |                    |                         ".center(200)
    end
end