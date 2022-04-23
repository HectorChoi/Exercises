# puts File.read('sample_text.txt')

class TextAnalyzer
  def process
    # your implementation
    my_file = File.open('sample_text.txt', 'r')
    yield(my_file.read)
    my_file.close
  end
end

analyzer = TextAnalyzer.new
analyzer.process { |file| puts file.split(/^\s*$/).size.to_s + ' paragraphs' }
analyzer.process { |file| puts file.split(/\n/).size.to_s + ' lines' }
analyzer.process { |file| puts file.split.size.to_s + ' words' }
