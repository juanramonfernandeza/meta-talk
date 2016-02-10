# 05 Dynamic Methods
require 'ap'

class Talk
  @attendees = %i[manuel roy danny charles owen ryan matt peter brad]

  @attendees.each do |attendee|
    define_method "hello_#{attendee}!" do
      puts "Hi, I'm #{attendee.capitalize}!"
    end
  end
end

talk = Talk.new

talk.hello_roy!
talk.hello_ryan!

puts 'Whats in the methods?'
ap Talk.instance_methods(false)
