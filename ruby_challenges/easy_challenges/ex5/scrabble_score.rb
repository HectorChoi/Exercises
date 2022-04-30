=begin
input: a word
output: Scrabble score for that word

rules:
Letter Values
  - Sum the values of all the tiles used in each word
  - empty words and whitespace strings score 0
  - nil also scores 0

mm:
Create a hash of letter - score pairings and iterate over the keys
For each key that is included in the input, add the score to a running sum
return the sum after iterating through all the keys

ds: a hash
=end

class Scrabble
  LETTER_SCORES = {
    'a' => 1,
    'e' => 1,
    'i' => 1,
    'o' => 1,
    'u' => 1,
    'l' => 1,
    'n' => 1,
    'r' => 1,
    's' => 1,
    't' => 1,
    'd' => 2,
    'g' => 2,
    'b' => 3,
    'c' => 3,
    'm' => 3,
    'p' => 3,
    'f' => 4,
    'h' => 4,
    'v' => 4,
    'w' => 4,
    'y' => 4,
    'k' => 5,
    'j' => 8,
    'x' => 8,
    'q' => 10,
    'z' => 10
  }

  def self.score(word)
    new(word).score
  end

  def initialize(input)
    @input = input
  end

  def score
    return 0 if @input.nil?
    sum = 0
    LETTER_SCORES.each do |letter, score|
      sum += @input.downcase.count(letter) * score
    end
    sum
  end
end
