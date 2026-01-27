class GradeCalculator
  def initialize(marks)
    @marks = marks
  end

  def calculate_grade
    if @marks >= 90
      "A+"
    elsif @marks >= 80
      "A"
    elsif @marks >= 70
      "B+"
    elsif @marks >= 60
      "B"
    elsif @marks >= 50
      "C"
    elsif @marks >= 40
      "D"
    else
      "F (Fail)"
    end
  end
end

marks = gets.to_i
calculator = GradeCalculator.new(marks)
grade = calculator.calculate_grade
puts "Your grade is: #{grade}"