class SportTeam
attr_accessor :name, :players, :coach
  def initialize(name, players, coach)
    @name = name
    @players = players
    @coach = coach
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



end
