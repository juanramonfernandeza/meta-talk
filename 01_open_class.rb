# 01 Open Class

string = "Hello I'm a string!"

begin
  puts string.hello!
rescue => e
  puts "Onoz, no hello!"
end

class String
  def hello!
    'Hello from inside String!'
  end
end

puts string.hello!
