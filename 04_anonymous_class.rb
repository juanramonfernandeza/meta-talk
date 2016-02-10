# 04 Anonymous Class
require 'ap'
# Instantiating a new class object!
variable = Class.new

puts 'What is this?'
ap variable.inspect

# Lets add some methods!
variable.class_eval do
  def initialize
    ap 'Im being instantiated! Yay!'
  end

  def say_hello
    'I am now in the class!'
  end
end

puts 'Now lets instantiate it!'
ap instance = variable.new

puts 'The method works!'
ap instance.say_hello
