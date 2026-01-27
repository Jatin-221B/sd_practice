# class Person
#   [:walk, :run, :jump].each do |action|
#     define_method(action) do
#       puts "I can #{action}"
#     end
#   end
# end

# p = Person.new
# p.walk
# p.run
# p.jump

class User
  PERMISSIONS = [:read, :write, :delete]

  def initialize(name,email,user_permissions)
    @name = name
    @email = email
    @user_permissions = user_permissions
  end

  PERMISSIONS.each do |permission|
    define_method("#{permission}?") do
      if @user_permissions.include?(permission)
        puts "User has permission to #{permission}"
      else
        puts "User does not have permission to #{permission}"
      end
    end
  end
end

u = User.new("jatin","jb@j.com",[:read,:write])
u.read?
u.write?
u.delete?