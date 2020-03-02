require('minitest/autorun')
require('minitest/reporters')
require_relative('../classes_a')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestStudent < Minitest::Test

def test_student_name
  student_name = Student.new("Bob", "C500")
  assert_equal("Bob", student_name.name)
end
end
