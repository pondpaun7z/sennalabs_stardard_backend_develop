class FootballGame
  attr_accessor :team1_score, :team2_score

  def initialize
    @team1_score = 0
    @team2_score = 0
  end

  def winner
    if @team1_score > @team2_score
      'Team1'
    elsif @team1_score < @team2_score
      'Team2'
    else
      'Draw'
    end
  end
end

def main
  football_game = FootballGame.new
  football_game.team1_score += 1
  football_game.team2_score += 1
  football_game.team2_score += 1
  puts football_game.team1_score
  puts football_game.team2_score
  puts football_game.winner
end

main
