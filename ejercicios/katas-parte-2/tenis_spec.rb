require 'rspec'
require_relative './tenis.rb'

describe TennisGame do

  describe 'translateScore' do

    it 'deberia ser Love' do
      t = TennisGame.new("Djokovic", "Nadal")
      t.translateScore(0).should eq "Love"
    end

    it 'deberia ser Fifteen' do
      t = TennisGame.new("Djokovic", "Nadal")
      t.translateScore(1).should eq "Fifteen"
    end

    it 'deberia ser Thirty' do
      t = TennisGame.new("Djokovic", "Nadal")
      t.translateScore(2).should eq "Thirty"
    end

    it 'deberia ser Fourty' do
      t = TennisGame.new("Djokovic", "Nadal")
      t.translateScore(3).should eq "Fourty"
    end
	
    it 'deberia ser Advantage' do
      t = TennisGame.new("Djokovic", "Nadal")
      t.translateScore(4).should eq "Advantage"
    end	
  end

  describe 'playerOneScores' do
    it "deberia ser 1" do
      t = TennisGame.new("Djokovic", "Nadal")
      t.playerOneScores.should eq 1
    end
  end

  describe 'playerTwoScores' do
    it "deberia ser 1" do
      t = TennisGame.new("Djokovic", "Nadal")
      t.playerTwoScores.should eq 1
    end
  end	

  describe 'hasWinner' do
    it 'deberia ser false, ya que recien comienza el juego' do
      t = TennisGame.new("Djokovic", "Nadal")
      t.hasWinner().should eq false
    end

    it 'deberia ser true, ya que el jugador Djokovic hace 4 puntos' do
      t = TennisGame.new("Djokovic", "Nadal")
      t.playerOneScores()
      t.playerOneScores()
      t.playerOneScores()
      t.playerOneScores()
      t.hasWinner().should eq true
    end	
  end


  describe 'playerWithHighestScore' do
    it 'deberia ser Djokovic, ya que recien comenzado el juego anota un punto' do
      t = TennisGame.new("Djokovic", "Nadal")
      t.playerOneScores()
      t.playerWithHighestScore().should eq "Djokovic"
    end

    it 'deberia ser Nadal, ya que recien comenzado el juego anota un punto' do
      t = TennisGame.new("Djokovic", "Nadal")
      t.playerTwoScores()
      t.playerWithHighestScore().should eq "Nadal"
    end	
  end

  describe 'isDeuce' do
    it 'deberia ser false, ya que el juego recien comienza' do
      t = TennisGame.new("Djokovic", "Nadal")
      t.isDeuce.should eq false
    end

    it 'deberia ser true, ya que ambos jugadores hicieron 3 puntos' do
      t = TennisGame.new("Djokovic", "Nadal")
      t.playerOneScores()
      t.playerOneScores()
      t.playerOneScores()
      t.playerTwoScores()
      t.playerTwoScores()
      t.playerTwoScores()
      t.isDeuce.should eq true
    end
  end	

  describe 'hasAdvantage' do
    it 'deberia ser false, ya que recien comienza el juego' do
      t = TennisGame.new("Djokovic", "Nadal")
      t.hasAdvantage.should eq false
    end
    
    it 'deberia ser true, ya que Djokovic tiene un punto mas que Nadal' do
      t = TennisGame.new("Djokovic", "Nadal")
      t.playerOneScores()
      t.playerOneScores()
      t.playerOneScores()
      t.playerOneScores()

      t.playerTwoScores()
      t.playerTwoScores()
      t.playerTwoScores()
      t.hasAdvantage.should eq true
    end
  end

  describe 'getScore' do
    it 'deberia ganar Djokovic' do
      t = TennisGame.new("Djokovic", "Nadal")
      t.playerOneScores()
      t.playerOneScores()
      t.playerOneScores()
      t.playerOneScores()
      t.getScore().should eq "Winner Djokovic"
    end

    it 'deberia ser deuce' do 
      t = TennisGame.new("Djokovic", "Nadal")
      t.playerOneScores()
      t.playerOneScores()
      t.playerOneScores()
      t.playerTwoScores()
      t.playerTwoScores()
      t.playerTwoScores()
      t.getScore().should eq "Deuce"
    end

    it 'deberia ser ventaja para Nadal' do
      t = TennisGame.new("Djokovic", "Nadal")
      t.playerOneScores()
      t.playerOneScores()
      t.playerOneScores()
      t.playerTwoScores()
      t.playerTwoScores()
      t.playerTwoScores()
      t.playerTwoScores()
      t.getScore().should eq "Advantage Nadal"
    end

    it 'deberia ser Thirty, Thirty' do
      t = TennisGame.new("Djokovic", "Nadal")
      t.playerOneScores()
      t.playerOneScores()
      t.playerTwoScores()
      t.playerTwoScores()
      t.getScore().should eq "Thirty, Thirty"
    end
  end
end
