=begin
Problem:
  Write a program that manages robot factory settings.

Rules:
  - When first booted up (upon initialization) a random name is generated
  - Random names have two uppercase letters followed by 3 decimal digits
  - After resetting, set a new random name
  - Should not allow the use of the same name twice when avoidable

MM:
  helper method: generate_random_name
  - to be called upon initialization and resetting

  Class variable to keep track of used names?

Examples/Test Cases:
  - names like RX837 or BC811
  - the name sticks
  - two different robots have different names
  - test resetting name changes the name
  - test different name when the chosen name is taken (use class variable)

DS:
  an array for the class variable to keep track of used names

Algorithm:
  constructor
  - upon initialization, generate a name and assign it to a local variable,
  `temp`
  - initialize a `tries` local variable to 0
  - until `tries` hits some limit or `temp` is not in the class variable
  `taken`,
    - increment `tries`
    - generate a new name and reassign `temp` to it
  - initialize the local variable @name = `temp`
  - add `temp` to the class variable `taken` array

  reset
  - reassign @name to a newly generated name
  - do I want to remove the old name from `taken`?
    - ya

  generate_random_name
  - use the ord of the uppercase letters and random 0-9 to generate random
  letters and numbers
  - return strings of length 5 starting with 2 uppercase letters and ending
  in three decimal digits
=end

# class Robot
#   @@taken = []
#   attr_reader :name

#   def initialize
#     temp = generate_random_name
#     tries = 0
#     until tries > 10 || !@@taken.include?(temp)
#       tries += 1
#       temp = generate_random_name
#     end
#     @name = temp
#     @@taken << temp
#   end

#   def reset
#     @@taken.delete(@name)
#     @name = generate_random_name
#   end

#   private

#   def generate_random_name
#     random_name = ''
#     2.times { random_name << rand(65..90).chr }
#     3.times { random_name << rand(48..57).chr }
#     random_name
#   end
# end

=begin
Launch School PEDAC to compare:

P: Understanding the Problem
  For our program, the details we need to keep in mind are as follows:
  - Since robot names are created randomly without input from a user, our
  program doesn't need to expect any input argument. The name we later return
  will be a string.
  - A robot's name is generated the first time it is booted up after being
  manufactured as well as the first time it is booted up after a factory reset.
  - The randomly generated names seem to fo llow a pattern of 2 uppercase
  alphabetic characters followed by three digits.

E: Examples and Test Cases
  From the test cases shown, we can see that we need to create a Robot class.
The class should have 2 methods as follows:
  - a method named `name` that returns the robot's randomly generated name
  (a string). The format of the name is 2 uppercase alphabet characters
  followed by three digits.
  - a method named `reset` that restores the robot to factory functions. This
  means that any previously existing name for the robot is wiped and a new one
  must be generated.

D: Data Structures
  We know that we will be working with strings in order to generate and return
a robot's name.

  The problem description stated that we should make an effort to avoid
collisions of the randomly generated names for various robots. This suggests
that we might also want to use a static or class-level collection such as
an array in order to track random names that have already been assigned to
instances of the `Robot` class.

Hints/Questions:
  In the `name` method:
  - If the current instance of `Robot` doesn't already have a saved name,
  generate one.
  - If you have to generate a new name, make sure there are no collisions with
  existing robot names.

A: Algorithm
  Method: `name`
  - If the robot already has a name assigned, return that name.
  - If the robot does not yet have a name:
    - Generate a random name (using helper function)
    - Continue generating random names until the class-level collection being
    used to track names of existing robots does not include the newly generated
    name.
  - Save the robot's new name
  - Save the name in the class-level collection used to track in-use names.
  - Return the name.

  Method: `reset`
  - Remove the current value of the robot's name from the class-level
  collection that tracks the in-use names of all existing robots.
  - Remove the existing value of the robot's name from the object.
    - a falsey placeholder value might be appropriate

  Helper Method to generate name
  - Begin with an empty `name` string.
  - Generate two random uppercase alphabetic characters and append them to the
  `name` string.
    - A helper function might be useful for generating the random letters.
  - Generate three random digits from 0-9 and append them to the `name` string.
    - A helper function might be useful for generating the random digits.
  - Return the name string.
=end

class Robot
  @@names = []

  def name
    return @name if @name
    @name = generate_name while @@names.include?(@name) || @name.nil?
    @@names << @name
    @name
  end

  def reset
    @@names.delete(@name)
    @name = nil
  end

  private

  def generate_name
    name = ''
    2.times { name << rand(65..90).chr }
    3.times { name << rand(0..9).to_s }
    name
  end
end

=begin
The `Robot` class has a class variable `names`, which is an array that holds
all of the currently taken names for instances of the `Robot` class.

The `name` method simply returns the robot's name if one has already been
assigned. Otherwise, the helper method `generate_name` is repeatedly invoked
until a unique name (one that is not present in the `names` array) has been
assigned. The newly generated unique name is added to the static `names` array
and then returned from the method.

Our `generate_name` method concatenates two random alphabetic characters and
three random digits onto the `name` string and returns the resulting name.
We use `rand` to find a random character in the ranges we provide. For the
letters, we use their corresponding ASCII codes to choose a random number, then
convert that number to a letter using `chr`.

The `reset` method uses the built-in `Array#delete` method to delete the
instance of the current name from our list of used names. We do this so that
the name is free to be used by instances of `Robot` created in the future.
We then reset the current robot's name to `nil`.
=end
