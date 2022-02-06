# Welcome Stranger

def greetings(name_arr, job_hash)
  full_name = name_arr.join(' ')
  title = "#{job_hash[:title]} #{job_hash[:occupation]}"
  puts "Hello, #{full_name}! Nice to have a #{title} around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around.
