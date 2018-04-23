require 'pry'
class Anagram
  attr_reader :word
  def initialize(word)
    @word = word
  end
  def match(anagrams)
    matches = []
    anagrams.each do |anagram|
      matches << anagram if anagram.split('').sort.join == @word.split('').sort.join
    end
    matches
  end
end
