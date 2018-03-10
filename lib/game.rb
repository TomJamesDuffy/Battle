require_relative 'player.rb'

class Game

  attr_reader :players, :current_player

  def initialize(player1, player2)
    @players = [player1, player2]
    @current_player = player1
  end

  def attack
    @players.select {|i| i != @current_player }[0].reduce_hitpoints
  end

  def player1
    @players.first
  end

  def player2
    @players.last
  end

  def switch
    @current_player = @players.select {|i| i != @current_player }[0]
  end

  def self.create(player1, player2)
    @game = Game.new(player1, player2)
  end

  def self.instance
    @game
  end

end

