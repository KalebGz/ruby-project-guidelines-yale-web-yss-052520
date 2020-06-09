class Piece #instances of this class are not stored in the database since they are only relevant to the active game (and there can be many inactive games)
    
    # since this is not an ActiveRecord, we need to create attribute macros and initialize method ourselves

    attr_reader :color # color is an inherent property of the piece and can't be changed
    attr_accessor :x_pos, :y_pos # x and y position can be changed

    @@all = [] # stores all the living pieces on the active board

    def initialize(color, x_pos, y_pos)
        @color = color
        @x_pos = x_pos
        @y_pos = y_pos

        @@all << all
    end

    # deletes all the active pieces if a board is saved or finished
    def self.clear
        @@all = []
    end

    # calculates all the regular moves (directly adjacent diagonals)
    def regular_moves

    end

    # calculates all the jump moves (diagnonals one square away)
    def jump_moves
        
    end

end