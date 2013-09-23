require 'rspec'
require_relative './permutation.rb'

describe Permutation do

  describe 'print_all_permutations' do
    it 'deberia retornar todas las combinaciones posibles de la palabra ABC' do
      p = Permutation.new("ABC")
      p.print_all_permutations().should match_array([["A", "B", "C"], ["A", "C", "B"], ["B", "A", "C"], ["B", "C", "A"], ["C", "A", "B"], ["C", "B", "A"]])
    end
  end

  describe 'print_all_permutations' do
    it 'deberia retornar todas las combinaciones posibles de la palabra TEST' do
      p = Permutation.new("TEST")
      p.print_all_permutations().should match_array([["E", "S", "T", "T"], ["E", "S", "T", "T"], ["E", "T", "S", "T"], ["E", "T", "S", "T"], ["E", "T", "T", "S"], ["E", "T", "T", "S"], ["S", "E", "T", "T"], ["S", "E", "T", "T"], ["S", 	 "T", "E", "T"], ["S", "T", "E", "T"], ["S", "T", "T", "E"], ["S", "T", "T", "E"], ["T", "E", "S", "T"], ["T", "E", "S", "T"], ["T", "E", "T", "S"], ["T", "E", "T", "S"], ["T", "S", "E", "T"], ["T", "S", "E", "T"], ["T", "S", "T", 	  "E"], ["T", "S", "T", "E"], ["T", "T", "E", "S"], ["T", "T", "E", "S"], ["T", "T", "S", "E"], ["T", "T", "S", "E"]])
    end
  end

end
