# Your code goes here!
class Anagram
  attr_accessor :word

  def initialize(word)
    @word = word
    @letter_map = map_letters(word)
  end

  def is_anagram_with(possible_anagram)
    comparison_map = map_letters(possible_anagram)
    return false if comparison_map.keys.length != @letter_map.keys.length
    @letter_map.keys.all? { |key| @letter_map[key] == comparison_map[key] }
  end

  def map_letters(word)
    word.split('').reduce({}) do |acc, l|
      acc[l] = acc[l] ? acc[l] + 1 : 1
      acc
    end
  end

  def match(possible_anagrams)
    possible_anagrams.select { |anagram| is_anagram_with(anagram) }
  end

end
