class TennisGame

  def initialize(playerOneName, playerTwoName)
    @playerOneName = playerOneName
    @playerTwoName = playerTwoName
    @playerOneScore = 0
    @playerTwoScore = 0
  end

  def getPlayerOneScore()
    @playerOneScore
  end

  def getPlayerTwoScore()
    @playerTwoScore
  end

  def playerOneScores()
    @playerOneScore += 1
  end

  def playerTwoScores()
    @playerTwoScore += 1
  end

  def getScore()
    if(self.hasWinner())
      return "Winner " + self.playerWithHighestScore()
    elsif(self.isDeuce())
      return "Deuce"
    elsif(self.hasAdvantage())
      return "Advantage " + self.playerWithHighestScore()
    else
      return self.translateScore(@playerOneScore) + ", " + self.translateScore(@playerTwoScore)
    end
  end	

  def translateScore(score)
    case
    when (score == 0)			  
      return "Love"
    when (score == 1)
      return "Fifteen"
    when (score == 2)
      return "Thirty"
    when (score == 3)
      return "Fourty"
    when (score == 4)
      return "Advantage"
    else
      return "Illegal score"	
    end
  end

  def hasWinner()
    return ( (@playerOneScore >= 4 && (@playerOneScore >= @playerTwoScore + 2)) || (@playerTwoScore >= 4 && (@playerTwoScore >= @playerOneScore + 2)) )
  end

  def playerWithHighestScore()
    if(@playerOneScore > @playerTwoScore)
      return @playerOneName
    else
      return @playerTwoName
    end
  end

  def isDeuce()
    return (@playerOneScore == 3 && @playerTwoScore == 3)
  end

  def hasAdvantage()
    return ((@playerOneScore >= 4 && (@playerOneScore == @playerTwoScore + 1)) || (@playerTwoScore >= 4 && (@playerTwoScore == @playerOneScore + 1)) )
  end

end
