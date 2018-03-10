require 'game'

describe Game do
  subject(:game) { described_class.new(p, p2) }
  let(:p) { double :player }
  let(:p2) { double :player }

  describe '#attack' do
   it 'damages the player' do
     expect(p).to receive(:reduce_hitpoints)
     game.attack
   end
 end

  describe '#player 1' do
    it 'player 1 can be observed' do
      expect(game.player1).to eq(p)
    end
  end 

  describe '#player 2' do
    it 'player 2 can be observed' do
      expect(game.player2).to eq(p2)
    end
  end

  describe '#switch' do
    it 'turn can be switched' do
      game.switch
      expect(game.player1).to eq(p)
    end
  end
end
