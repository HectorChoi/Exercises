=begin
input: two strands of DNA
output: the count of differences between the two strands

rules:
  - if one strand is shorter than the other, we only need to check for
    differences for the length of the shorter strand

examples / test cases:
  We need to create a DNA class, with two methods as follows:
  - a constructor that accepts a DNA strand string as an argument.
    the constructor does not raise any errors.
  - a method that accepts a second DNA strand string as an argument and returns
    the differences between the two strands - i.e. the Hamming distance.
  - we may want to create some helper methods to assist, but optional.

data structures:
  - we're given the DNA strands as strings.
  - we may want to use a collection to help iterate through each character of
    the DNA strand.

algorithm:
  constructor
  - accept a DNA strand string as an argument
  - save it for later use.

  hamming_distance
  - compare the lengths of both DNA strands to determine which is shorter
  - set a counter to 0
  - based on the shorter strand's length, iterate through both DNA strand
    strings, at the same index, and compare each character
    - if the characters are different, increase the counter
    - continue to the next index position
  - return the counter.
=end

# class DNA
#   def initialize(dna_strand_string)
#     @dna = dna_strand_string
#   end

#   def hamming_distance(other_dna_string)
#     short, long = return_smaller_larger_strings(@dna, other_dna_string)
#     counter = 0
#     short.chars.each_with_index do |base, index|
#       counter += 1 if base != long[index]
#     end
#     counter
#   end

#   private

#   def return_smaller_larger_strings(str1, str2)
#     [str1, str2].sort_by(&:size)
#   end
# end

require 'bundler/setup'

class DNA
  def initialize(strand)
    @strand = strand
  end

  def hamming_distance(comparison)
    shorter = @strand.length < comparison.length ? @strand : comparison
    differences = 0

    shorter.length.times do |index|
      differences += 1 unless @strand[index] == comparison[index]
    end

    differences
  end
end
