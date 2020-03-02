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



end
