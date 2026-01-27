class EvenChecker

attr_accessor :cache
  
def initialize
  @cache = {}
end

def is_even(n)
   return @cache[n] if @cache.key?(n)
  

  result = n.even?
  @cache[n] = result
  result
end
end

# checker = EvenChecker.new

# checker.is_even(2)
# checker.is_even(3)
# checker.is_even(2)
# puts checker.cache

#using closures
caches = {}
is_even_lamdba = ->(n) do
  caches[n] = n.even? unless caches.key?(n)
  caches[n]
end

puts is_even_lamdba.call(2)
puts is_even_lamdba.call(3)
puts is_even_lamdba.call(2)
puts caches

