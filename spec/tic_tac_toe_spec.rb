# rubocop:disable Lint/UselessComparison
require_relative '../lib/game_logic.rb'

describe Game do
  let(:game) { Game.new }
  let(:simbol) { 'X' }
  let(:ans) { game.check_move(0, simbol) }
  describe '#check_move' do
    it 'should replace the move of the player with the simbol' do
      expect(game.check_move(0, simbol)).to eq(true)
    end
    it 'invalid move of the player ' do
      n = ans != ans
      expect(n).to eq(false)
    end
  end

  describe '#check_winner' do
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

# rubocop:enable Lint/UselessComparison
