class Animal
  def initialize
    @name
  end

  def walk
    puts "its a parent class"
  end

  private
  def private_method
    puts "its a private method"
  end
end

class Cat < Animal

  def sound
    puts "meow meow"
  end

  def walk
    puts "its a child class"
  end

  def method_missing(name, *args)
    puts "method #{name} not found"
    puts "arguments: #{args.inspect}" 
  end
end

sample = Cat.new

sample.walk
sample.private_method

