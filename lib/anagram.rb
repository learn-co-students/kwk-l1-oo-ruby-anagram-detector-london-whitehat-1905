# Your code goes here!
class Anagram

  attr_accessor :word

  def initialize(word)
    @word = word

  end

  def match(words)
    # matchingWords = []
    # userWord = @word.split("")
    # words.each{|word| word.split("") }
    #
    #
    # if userWord.sort == words.each{|word| word.split("") }.sort
    #    matchingWords << arrayWord
    #    puts matchingWords
    # else
    #   puts matchingWords
    # end
    words.filter{|word| 
      ourWord = @word.split("").sort
      theirWord = word.split("").sort
      ourWord == theirWord
    }
  end

end
