require 'byebug'
=begin
Terminal asks answers phone with a phrase. Then the program captures the response.

If the response is empty (user just hit enter), reply back with , "Hello"

if the response has any lowercase letters, reply back with, "I am having a hard time hearing you"

if the response has all caps, reply back with, "No this is not a grocery store"

if the response is "GOODBYE", increment a "goodbye" counter by one (start from zero). If the counter is equal to one,
    reply back with , "Is there anything I can help you with".

else if counter is 2, reply back and close the program.
    
Create a loop with the above program, so that it keeps requesting input from user.

=end 

puts "Hello, this is Jack at Bad Company customer service. How may I help you?"
goodbye_counter = 0
while goodbye_counter < 2 do
    reply = gets.chomp
    loud_response = reply.upcase

    case reply
        when ""
            puts "HELLO!?"
        when "GOODBYE!"
            goodbye_counter += 1

            if goodbye_counter == 1
                puts "IS THERE ANYTHING I CAN HELP YOU WITH?"
            elsif goodbye_counter == 2
                puts "THANKS FOR CALLING!"
            end
        when loud_response
            puts "NO THIS IS NOT A GROCERY STORE"
        else 
            puts "I AM HAVING A HARD TIME HEARING YOU"
    end
end
