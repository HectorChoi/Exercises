exercises = {
  # documentation_again: 9,
  # easy1:               10,
  # easy2:               10,
  easy3:               10,
  easy4:               10,
  easy5:               11
  # easy6:               10,
  # easy7:               10,
  # easy8:               10,
  # easy9:               11,
  # medium1:             10,
  # medium2:             10,
  # advanced1:           9,
  # debugging:           11
}

exercise_topic = exercises.keys.sample
puts exercise_topic
exercise_size = exercises[exercise_topic]
exercise_number = rand(1..exercise_size)
puts exercise_number
