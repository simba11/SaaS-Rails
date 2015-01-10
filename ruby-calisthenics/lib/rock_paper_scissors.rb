class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

  def self.winner(player1, player2)
    raise NoSuchStrategyError, "Strategy must be one of R,P,S" unless player1[1] =~ /R|P|S/ && player2[1] =~ /R|P|S/
    case [player1[1], player2[1]]
      when ['R', 'R'], ['S', 'S'], ['P', 'P'], ['R', 'S'], ['S', 'P'], ['P', 'R']
        player1
      else
        player2
    end
  end

  def self.tournament_winner(tournament)
  #almost done, keep tweaking
    #check if game
    if tournament[0][0].is_a? String
      return winner(tournament)
    end
    #else, keep recursing
    return winner([tournament_winner(tournament[0]),tournament_winner(tournament[1])])
  end
end
