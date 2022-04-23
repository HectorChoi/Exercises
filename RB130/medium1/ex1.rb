=begin
input: block with String inside it
output: contents of blocks passed in

rules:
  - 'something' is said, possibly 'nothing'
  - play that 'something' that was said, don't play 'nothing'
  - the device can output the most recent recording using a #play method.

mm:
if passed a block, record its contents
otherwise, do nothing

ds:
class: Device
  - initialized with an empty array of recordings
  - store 'things' that are said in @recordings

algorithm:
  `listen` instance method
    - if a block is given, record the return value of the block
    - guard for when the return value of the block is nil

  `play` instance method
    - output the most recent content of @recordings
=end

class Device
  def initialize
    @recordings = []
  end

  def record(recording)
    @recordings << recording
  end

  def listen
    recording = yield if block_given?
    record(recording) if recording
  end

  def play
    puts @recordings.last
  end
end

listener = Device.new
listener.listen { "Hello World!" }
listener.listen
listener.play # Outputs "Hello World!"
