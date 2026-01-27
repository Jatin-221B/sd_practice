require_relative 'math_mod'
require_relative 'log_msg'

class Calculator
  include MathOperations
  include LoggerModule

  def sum(a, b)
    result = add(a, b)
    log("Sum is #{result}")
  end
end

Calculator.new.sum(3,4)