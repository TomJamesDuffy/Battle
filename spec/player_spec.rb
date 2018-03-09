require 'player.rb'

describe Player do

  describe '#name' do
    it 'returns the player name' do
      player = Player.new("Kevin")
      expect(player.name).to eq("Kevin")
    end
  end
end

    
