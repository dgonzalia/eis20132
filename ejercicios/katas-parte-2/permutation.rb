class Permutation

  def initialize(word)
    @value = word
  end

  def print_all_permutations()
    word = @value.chars.to_a.permutation.to_a
    word.each do |p|
      puts p.join
    end	
  end

end
