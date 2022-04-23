def argument_practice(arr)
  yield arr
end

argument_practice(%w(raven finch hawk eagle)) do |_, _, *raptors|
  p raptors
end
