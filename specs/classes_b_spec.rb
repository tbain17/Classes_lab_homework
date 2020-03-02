require('minitest/autorun')
require('minitest/reporters')
require_relative('../classes_b')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestSportTeam < Minitest::Test

  def test_sport_team_name
    sport_team = SportTeam.new("The Wasps", [
      "Bobby",
      "Lightening",
      "Jake"
      ], "CoachBob")
      assert_equal("The Wasps", sport_team.name)
      assert_equal([
        "Bobby",
        "Lightening",
        "Jake"
        ], sport_team.players)
      assert_equal("CoachBob", sport_team.coach)
end

def test_change_coach_name
  sport_team = SportTeam.new("The Wasps", [
    "Bobby",
    "Lightening",
    "Jake"
    ], "CoachBob")
    sport_team.coach = "Coach Bob II"
    assert_equal("Coach Bob II", sport_team.coach)
end

def test_add_new_player
  sport_team = SportTeam.new("The Wasps", [
    "Bobby",
    "Lightening",
    "Jake"
    ], "CoachBob")
    sport_team.add_new_player("Mr Potato Head")
    assert_equal([
      "Bobby",
      "Lightening",
      "Jake",
      "Mr Potato Head"
      ], sport_team.players)
end

def test_find_player__player_found
  sport_team = SportTeam.new("The Wasps", [
    "Bobby",
    "Lightening",
    "Jake"
    ], "CoachBob")
    assert_equal("Jake",sport_team.find_player("Jake"))
  end

  def test_find_player__player_not_found
    sport_team = SportTeam.new("The Wasps", [
      "Bobby",
      "Lightening",
      "Jake"
      ], "CoachBob")
      assert_nil(sport_team.find_player("Potato"))
  end

  def test_add_points__win
    sport_team = SportTeam.new("The Wasps", [
      "Bobby",
      "Lightening",
      "Jake"
      ], "CoachBob")
      sport_team.add_points("Win")
      assert_equal(1, sport_team.points)
  end

  def test_add_points__lost
    sport_team = SportTeam.new("The Wasps", [
      "Bobby",
      "Lightening",
      "Jake"
      ], "CoachBob")
      sport_team.add_points("Loss")
      assert_equal(0, sport_team.points)
  end

end
