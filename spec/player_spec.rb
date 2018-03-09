require 'player'

describe Player do
  subject(:p) { Player.new('John') }

  describe 'Player name' do
    it 'returns the player name' do
      expect(p.name).to eq 'John'
    end
  end
end
