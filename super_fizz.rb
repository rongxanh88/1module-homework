
gem 'minitest'
require 'minitest/pride'
require 'minitest/autorun'

class Super_Fizz < Minitest::Test

  def self.super_fizz_buzz(number)
    if ((number % 3 == 0) and (number % 5 == 0) and (number % 7 == 0))
      puts "SuperFizzBuzz\n"
    elsif ((number % 3 == 0) and (number % 7 == 0))
      puts "SuperFizz\n"
    elsif ((number % 5 == 0) and (number % 7 == 0))
      puts "FizzBuzz\n"
    elsif number % 3 == 0
      puts "Fizz\n"
    elsif number % 5 == 0
      puts "Buzz\n"
    elsif number % 7 == 0
      puts "Super\n"
    else
      puts "#{number}\n"
    end
  end
    
end

for number in (0..1000) do
  Super_Fizz.super_fizz_buzz(number)
end
