require('minitest/autorun')
require('minitest/reporters')
require_relative('../classes_a')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestStudent < Minitest::Test
end
