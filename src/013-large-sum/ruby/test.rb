require 'minitest/autorun'
require_relative 'solve'

class SolverTest < MiniTest::Test
  def test_solve
    assert_equal Solver.solve(["12345678901234", "87654321098765"]), 9999999999
  end
end
