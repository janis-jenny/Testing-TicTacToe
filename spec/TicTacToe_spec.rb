require './lib/game_logic'
# require './bin/main'

describe Game do
    let(:game) {Game.new}
    let(:arr) {%w[x x x ]}
    let(:simbol){'o'}
    # describe "#display_board" do
    #     it "should display the initial board of the game" do 
    #     expect(game.).to eq(@board)
    #     end
    # end

    describe '#check_move' do
        it 'should replace the move of the player with the simbol' do
        expect(game.check_move(0, 'X')).to eq(true)
        end
    end

    describe '#check_winner'do
      it 'should return false if the combination of simbols are not right' do
        expect(game.check_winner(simbol)).to eql(false)
      end
    end
end
