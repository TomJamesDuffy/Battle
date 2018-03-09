require 'game'

describe Game do
  subject(:game) { described_class.new }
  let(:p) { double :player }
  let(:p2) { double :player }

  describe '#attack' do
   it 'damages the player' do
     expect(p2).to receive(:reduce_hitpoints)
     game.attack(p2)
   end
 end
end
