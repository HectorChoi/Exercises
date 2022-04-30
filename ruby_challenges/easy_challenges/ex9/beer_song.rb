class BeerSong
  # rubocop:disable Metrics/MethodLength
  # rubocop:disable Layout/LineLength
  def self.verse(number)
    if number > 2
      "#{number} bottles of beer on the wall, #{number} bottles of beer.\n" \
      "Take one down and pass it around, #{number - 1} bottles of beer on the wall.\n"
    elsif number == 2
      "2 bottles of beer on the wall, 2 bottles of beer.\n" \
      "Take one down and pass it around, 1 bottle of beer on the wall.\n"
    elsif number == 1
      "1 bottle of beer on the wall, 1 bottle of beer.\n" \
      "Take it down and pass it around, no more bottles of beer on the wall.\n"
    elsif number == 0
      "No more bottles of beer on the wall, no more bottles of beer.\n" \
      "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    else
      raise ArgumentError
    end
  end
  # rubocop:enable Metrics/MethodLength
  # rubocop:enable Layout/LineLength

  def self.verses(start_number, end_number)
    song = []
    (end_number..start_number).to_a.reverse.each { |num| song << verse(num) }
    song.join("\n")
  end

  def self.lyrics
    verses(99, 0)
  end
end
