
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

  def self.super_fizz_buzz_concatenation(number)
    word = ""

    word += "Super" if number % 7 == 0
    word += "Fizz" if number % 3 == 0
    word += "Buzz" if number % 5 == 0

    word = number if word.empty?

    puts "#{word}\n"
  end
  
end

def time_method(method=nil, *args)
  beginning_time = Time.now
  if block_given?
    yield
  else
    self.send(method, args)
  end
  end_time = Time.now
  puts "Time elapsed #{(end_time - beginning_time)*1000} milliseconds"
end

time_method do

  #what ever code you want to time
  
  # for number in (0..1000) do
  #   Super_Fizz.super_fizz_buzz(number)
  # end


  for number in (0..1000) do
    Super_Fizz.super_fizz_buzz_concatenation(number)
  end

end


=begin
for number in (0..1000) do
  Super_Fizz.super_fizz_buzz(number)
end


for number in (0..1000) do
  Super_Fizz.super_fizz_buzz_concatenation(number)
end

=end