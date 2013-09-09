class RomanNumber

  def initialize(number)
    @num = number
  end

  def value
    return "#{@num}"
  end

  def add(romanNumber)
    RomanNumber.new("#{@num}#{romanNumber.value}")
  end

  def ==(romanNumber)
    @num == romanNumber.value
  end

end

