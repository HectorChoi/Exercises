vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurences(words)
  counter = Hash.new
  words.each do |word|
    if counter.key?(word)
      counter[word] += 1
    else
      counter[word] = 1
    end
  end

  counter.each do |word, count|
    puts "#{word} => #{count}"
  end
end

count_occurences(vehicles)
