# the below is from the solution provided by LS
# When you feel up to it, try coding it again from scratch.

=begin
Problem:
  - We need to create a diamond of letters based on the input letter we receive.
  The requirements given in the instructions broke down all of the details we
  need to keep in mind. Again, they are:
  - The first row contains one 'A'
  - The last row contains one 'A'
  - All rows, except the first and last, have exactly two identical letters
  - The diamond is horizontally symmetric
  - The diamond is vertically symmetric
  - The diamond has a square shape (width equals height)
  - The letters form a diamond shape
  - The top half has the letters in ascending order
  - The bottom half has the letters in descending order
  - The four corners (containing the spaces) are triangles

Examples / Test Cases:
  From the test cases shown, we can see that we need to create a Diamond class
  This class only needs one method:
  - A method that accepts one argument, a letter. This method should return a
  diamond based on the input letter.
    - this method is defined as a static or class method.

  A few additional details to note:
  - The diamond always begins and ends with the letter A. The second row of B
  has one space between letters. All subsequent rows have an additional 2 spaces
  between letters compared to the previous row.
  - We need to preserve the width of the longest row in the shorter rows. That
  is, if "E" is the longest row and is 9 characters long, the A row needs to be
  9 characters long also.

Data structures:
  Our input and output for the method are both strings. We may also want to use
arrays to build our diamond, because its built-in methods may prove helpful.

Hints / Questions:
  - The method to make a diamond should first determine what letters are needed
  in each row of the diamond. Once that is done, iterate over the letters
  creating one row at a time.

Algorithm:
  make_diamond:
    - create a range of letters: 'A' until the given letter and then back to 'A'
    in reverse. Note that the given letter only appears once in this range.
    - calculate the width of the diamond. We will use a helper method.
    - iterate over the range of letters, and create a row for each current
    letter. We will use a helper method.
      - Center the row with spaces
      - Join all rows with a newline and append a final newline.

  helper method: make_row
    - if current letter is 'A', return 'A'
    - if current letter is 'B', return 'B B'
    - Create and return a string consisting of the current letter separated by
    the appropriate number of spaces. A helper method is useful here.

  helper method: determine_spaces
    - If the letter is 'A', return "" (an empty string)
    - If the letter is 'B', return " " (a single space)
    - Starting with the letter C, the amount of spaces needed between letters is
    3. Every subsequent letter needs two more spaces: D needs 5, E needs 7, etc.
      - Use a loop to figure out the amount of spaces needed based on this
      formula
      - Return the correct amount of spaces as a string

  helper method: max_width
    - If the letter is 'A', return 1
    - Otherwise, determine number of spaces between letters and add 2 for the
    letters at either end.
=end

class Diamond
  def self.make_diamond(letter)
    range = ('A'..letter).to_a + ('A'...letter).to_a.reverse
    diamond_width = max_width(letter)

    range.each_with_object([]) do |let, arr|
      arr << make_row(let).center(diamond_width)
    end.join("\n") + "\n"
  end

  class << self
    private

    def make_row(letter)
      return "A" if letter == 'A'
      return "B B" if letter == 'B'

      letter + determine_spaces(letter) + letter
    end

    def determine_spaces(letter)
      all_letters = ['B']
      spaces = 1

      until all_letters.include?(letter)
        current_letter = all_letters.last
        all_letters << current_letter.next
        spaces += 2
      end

      ' ' * spaces
    end

    def max_width(letter)
      return 1 if letter == 'A'

      determine_spaces(letter).count(' ') + 2
    end
  end
end
