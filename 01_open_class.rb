# 01 Open Class

string = "Hello I'm a string!"

puts "Does string have a :hello! method?"
begin
  puts string.hello!
rescue => e
  puts 'Onoz, no hello!'
end

class String
  def hello!
    'Hello from inside String!'
  end
end

puts "What about now?"
puts string.hello!
