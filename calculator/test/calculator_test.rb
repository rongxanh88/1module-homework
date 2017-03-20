gem 'minitest'

require 'minitest/autorun'
require 'minitest/pride'
require "../lib/calculator.rb"

class CalculatorTest < Minitest::Test

  def test_instance
    calculator = Calculator.new
    result = calculator.instance_of? Calculator
    assert_equal true, result
  end
  
  def test_total
    calculator = Calculator.new(40)
    assert_equal 40, calculator.total
  end
  
  def test_add
    calculator = Calculator.new(55)
    calculator.add(5)
    assert_equal 60, calculator.total
  end
  
  def test_clear
    calculator = Calculator.new
    calculator.clear
    assert_equal 0, calculator.total
  end
  
  def test_subtract
    calculator = Calculator.new(50)
    calculator.subtract(5)
    assert_equal 45, calculator.total
  end
  

end
