class Array
  def avg

    each do |element|
      return "Array must contain numbers" if !element.is_a? Numeric
    end
    return nil if empty?
    sum.to_f/length
  end
end

puts [1,2,3,4,5].avg