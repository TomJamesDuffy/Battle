require 'player'

describe Player do
  subject(:p) { Player.new('John') }
  subject(:p2) { Player.new('Frank') }

  describe 'Player name' do
    it 'returns the player name' do
      expect(p.name).to eq 'John'
    end
  end

  describe '#hitpoints' do
    it 'returns the hit points' do
      expect(p.hitpoints).to eq described_class::DEFAULT_HITPOINTS
    end
  end

 describe '#reduce_hitpoints' do
   it 'reduces the player hit points' do
     expect { p.reduce_hitpoints }.to change { p.hitpoints }.by(-10)
   end
 end

end
