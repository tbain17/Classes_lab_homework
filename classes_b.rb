class SportTeam
attr_accessor :name, :players, :coach, :points
  def initialize(name, players, coach)
    @name = name
    @players = players
    @coach = coach
    @points = 0
end

def add_new_player(player)
  @players.push(player)
end

def find_player(player)
  for player_name in players
    if player_name == player
      return player
    end
  end
  return nil
end

def add_points(result)
  @points += 1 if result == "Win"
  @points += 0 if result == "Loss"
end


end
