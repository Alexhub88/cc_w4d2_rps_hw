class Game

  def initialize()
  end

  def outcome(hand1, hand2)

    if hand1 == 'rock' &&  hand2 == 'paper'
      return 'Paper'
    elsif hand1 == 'rock' &&  hand2 == 'scissors'
      return 'Rock'
    elsif hand1 == 'paper' &&  hand2 == 'scissors'
      return 'Scissors'
    elsif hand1 == 'paper' &&  hand2 == 'rock'
      return 'Paper'
    elsif hand1 == 'scissors' &&  hand2 == 'rock'
      return 'Rock'
    elsif hand1 == 'scissors' &&  hand2 == 'paper'
      return 'Scissors'
    end
  end
end
