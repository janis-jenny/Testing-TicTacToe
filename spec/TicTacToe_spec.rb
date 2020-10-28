require './lib/game_logic'
# require './bin/main'

describe Game do
    let(:game) {Game.new}
    let(:simbol){'X'}

    describe '#check_move' do
        it 'should replace the move of the player with the simbol' do
        expect(game.check_move(0, 'X')).to eq(true)
        end
    end

    describe '#check_winner'do
      it 'should return false if the combination of simbols are not right' do
        expect(game.check_winner(simbol)).to eql(false)
      end

      it 'should return true if the combination of simbols are right' do
        game.check_move(0, simbol)
        game.check_move(1, simbol)
        game.check_move(2, simbol)
        expect(game.check_winner(simbol)).to be(true)
      end
    end
end
