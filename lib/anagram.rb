require 'pry'
class Anagram
  attr_reader :word
  def initialize(word)
    @word = word
  end
  def match(anagrams)
    matches = []
    anagrams.each do |anagram|
      if anagram.sort == @word.sort
        matches << anagram
      end
    end
    matches
  end
end
