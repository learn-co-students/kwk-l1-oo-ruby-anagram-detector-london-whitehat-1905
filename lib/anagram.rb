# Your code goes here!
class Anagram
  attr_accessor :word
  def initialize(word)
    @word = word.downcase
  end
  def match(words)
    words.select do |word|
      is_anagram?(word)
   end
  end
  def is_anagram?(word)
    word.chars.sort == @word.chars.sort
  end
end
