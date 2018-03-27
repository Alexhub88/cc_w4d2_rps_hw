class ImprovedGame

  def initialize()
  end

  def outcome(hand1, hand2)
    result_array = Array.new(2, "")
    if hand1 == 'rock' &&  hand2 == 'paper'
      result_array[0] = 'Player 2'
      result_array[1] = 'Paper'
    elsif hand1 == 'rock' &&  hand2 == 'scissors'
      result_array[0] = 'Player 1'
      result_array[1] = 'Rock'
    elsif hand1 == 'paper' &&  hand2 == 'scissors'
      result_array[0] = 'Player 2'
      result_array[1] = 'Scissors'
    elsif hand1 == 'paper' &&  hand2 == 'rock'
      result_array[0] = 'Player 1'
      result_array[1] = 'Paper'
    elsif hand1 == 'scissors' &&  hand2 == 'rock'
      result_array[0] = 'Player 2'
      result_array[1] = 'Rock'
    elsif hand1 == 'scissors' &&  hand2 == 'paper'
      result_array[0] = 'Player 1'
      result_array[1] = 'Scissors'
    end
    return result_array
  end
end
