
require_relative '../lib/game_logic.rb'

describe Game do
    describe "#initialize" do
        it "should display the initial board of the game" do
        game = Game.new  
        expect(game.initialize).to eq(@board)
        end
    end
end