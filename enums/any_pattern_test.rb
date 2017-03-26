gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class AnyPatternTest < Minitest::Test

  def test_has_at_least_one_zero
    numbers = [2, 0, 9, 3, 0, 1]
    has_zero = false
    numbers.each do |number|
      has_zero = true if number.zero?
    end
    assert has_zero
  end

  def test_does_not_have_any_zeros
    numbers = [3, 1, 3, 2, 4, 9, 8]
    has_zero = false
    numbers.each do |number|
      # Your code goes here
      has_zero = true unless number != 0
    end
    refute has_zero
  end

  def test_has_at_least_one_alice
    names = ["Bill", "Bob", "Burton", "Alice", "Brandon"]
    has_alice = false
    # Your code goes here
    names.each do |name|
      has_alice = true unless name == "Alice"
    end
    
    assert has_alice
  end

  def test_no_alices
    names = ["Chuck", "Charlene", "Cory", "Chris", "Carl"]
    # Your code goes here
    has_alice = true
    names.each do |name|
      has_alice = false unless name == "Alice"
    end
    
    refute has_alice
  end

  def test_has_a_multi_word_phrase
    phrases = ["Sure!", "OK.", "I have no idea.", "Really?Whatever."]
    # Your code goes here
    has_multi_word_phrase = false
    word_count = 0
    phrases.each do |phrase|
      words = phrase.split(" ").to_a
      has_multi_word_phrase = true unless words.size > 1
    end
    
    assert has_multi_word_phrase
  end

  def test_no_monkeys
    animals = ["elephant", "hippo", "jaguar", "python"]
    # Your code goes here
    has_monkeys = false
    animals.each do |animal|
      has_monkeys = true unless animal != "monkey"
    end
    
    refute has_monkeys
  end

  def test_no_multiples_of_five
    numbers = [3, 1, 3, 2, 4, 9, 8]
    # Your code goes here
    multiples_of_5 = false
    numbers.each do |num|
      multiples_of_5 = true unless num % 5 != 0
    end
    
    refute multiples_of_5
  end

end