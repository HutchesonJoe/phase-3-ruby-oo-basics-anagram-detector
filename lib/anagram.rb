require 'pry'

class Anagram
  attr_accessor :word
  attr_accessor :array
  attr_accessor :anagrams

  def initialize(word)
    @word = word
  end

  def match array
    @array = array
    new_array = array.map{|w| w.split("")}
    @anagrams = new_array.filter do |word_array| 
      word_array.sort == @word.split("").sort
    end
    joined_anagrams = @anagrams.map {|w| w.join}
  end
end

