def palindromic_number?(int)
  int.to_s == int.to_s.reverse
end

p palindromic_number?(34543)
