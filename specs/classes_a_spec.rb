require('minitest/autorun')
require('minitest/reporters')
require_relative('../classes_a')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestStudent < Minitest::Test

  def test_student_name
    student_name = Student.new("Bob", "C500")
    assert_equal("Bob", student_name.name)
  end

  def test_change_student_details
    student = Student.new("Craig", "D20")
    student.name = "Potato"
    student.cohort = "D6"
    assert_equal("Potato", student.name)
    assert_equal("D6", student.cohort)
  end

  def test_student_chat
    student = Student.new("David", "C2")
    assert_equal("I can talk!", student.student_chat)
  end

  def test_say_favourite_language
    student = Student.new("David", "C2")
    assert_equal("I love Ruby", student.say_favourite_language("Ruby"))
  end
  
end
