=begin
methods:
  constructor
  - input: string

  #match
  - input: array of strings
  - output: array (possibly empty) of matched anagrams

  rules:
  - identical word is not an anagram
  - matches are case insensitive, but should contain the capitalization of the
  original word
=end

class Anagram
  ALPHABET = ('a'..'z').to_a

  def initialize(word)
    @word = word.downcase
  end

  def match(arr)
    arr.select { |possible_anagram| is_anagram?(possible_anagram) }
  end

  private

  def is_anagram?(other_word)
    return false if @word == other_word.downcase
    ALPHABET.each do |letter|
      return false if @word.count(letter) != other_word.downcase.count(letter)
    end
    true
  end
end
