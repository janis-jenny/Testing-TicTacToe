
require '../lib/game_logic'

describe Game do
    let(:game) {Game.new}
   
    # describe "#display_board" do
    #     it "should display the initial board of the game" do 
    #     expect(game.).to eq(@board)
    #     end
    # end

    describe "#check_move" do

        it "should replace the move of the player with the simbol" do
        move = 1
        simbol = 'X'
        game.check_move(move, simbol)
        expect(game.check_move(0, 'X')).to eq(true)
        end
    end
end