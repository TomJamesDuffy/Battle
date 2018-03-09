require 'game.rb'

describe Game do
  subject(:game) { Game.new }
  let(:player) { double :player, reduce_hitpoints: nil }


  describe '#attack' do
    it 'attacks a player with an attack' do 
      expect(player_2).to receive(:receive_damage)
      game.attack(player_2)
    end
  end
end


