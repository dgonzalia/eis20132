require 'rspec'
require_relative './fizz_buzz_game.rb'

describe FizzBuzzGame do
  
  describe 'sequence 1' do
    it 'deberia retornar 1 ya que no es multiplo ni de 3 ni de 5' do
    fizzBuzz = FizzBuzzGame.new
    fizzBuzz.sequence(1).should eq 1
    end
  end

  describe 'sequence 3' do
    it 'deberia retornar Fizz, ya que es multiplo de 3' do
    fizzBuzz = FizzBuzzGame.new
    fizzBuzz.sequence(3).should eq "Fizz"
    end
  end

  describe 'sequence 5' do
    it 'deberia retornar Buzz, ya que es multiplo de 5' do
    fizzBuzz = FizzBuzzGame.new
    fizzBuzz.sequence(5).should eq "Buzz"
    end
  end

  describe 'sequence 15' do
    it 'deberia retornar FizzBuzz, ya que es multiplo de 5 y de 3' do
    fizzBuzz = FizzBuzzGame.new
    fizzBuzz.sequence(15).should eq "FizzBuzz"
    end
  end

end


