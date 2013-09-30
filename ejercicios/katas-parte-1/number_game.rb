class FizzBuzzGame

def sequence (num)
  multiploDeTres = num % 3 == 0
  multiploDeCinco = num % 5 == 0
  multiploDeTresYDeCinco = multiploDeTres && multiploDeCinco
  case
  when (multiploDeTresYDeCinco)
    return "FizzBuzz"
  when (multiploDeTres)
    return "Fizz"
  when (multiploDeCinco)
    return "Buzz"
  else
    return num
  end
end

def print_numbers
  for i in 1..100
    puts sequence (i)
  end
end

end

fbg = FizzBuzzGame.new
fbg.print_numbers
