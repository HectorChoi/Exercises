class Clock
  def self.at(hour, minute = 0)
    new(hour, minute)
  end

  attr_accessor :hour, :minute

  def initialize(hour, minute)
    @hour = hour
    @minute = minute
  end

  def to_s
    hour_str = hour < 10 ? "0#{hour}" : hour.to_s
    minute_str = minute < 10 ? "0#{minute}" : minute.to_s
    [hour_str, minute_str].join(':')
  end

  def +(time)
    hrs, mins = time.divmod(60)
    hrs = minute + mins > 60 ? hrs + 1 : hrs
    self.minute = (minute + mins) % 60
    self.hour = (hour + hrs) % 24
    self
  end

  def -(time)
    hrs, mins = time.divmod(60)
    hrs = minute - mins < 0 ? hrs + 1 : hrs
    self.minute = (minute - mins) % 60
    self.hour = (hour - hrs) < 0 ? (24 + (hour - hrs)) % 24 : hour - hrs
    self
  end

  def ==(other)
    hour == other.hour && minute == other.minute
  end
end

=begin
Launch School Solution PEDAC Process
P: For our program, the details we need to keep in mind are as follows:
  - Our clock objects should track hours and minutes.
  - We should be able to add minutes to and subtract minutes from our clock
  objects.
  - If two clock objects have the same time (both hours and minutes), they
  should be considered equal.
  - We may want our clock object to use 24-hour notation rather than 12-hour
  notation since we only need to track hours and minutes, not the date.

E: From the test cases shown above, we can see that we need to create a `Clock`
class. The class should have several methods as follows:
  - A constructor that accepts two number arguments representing the hour and
  minutes
  - A class or static method named `at` that can create and return a new
  instance of `Clock`. If the minutes argument is omitted, a default value of
  `0` will be used.
  - A method that returns the clock's current time as a string.
  - Methods that add and subtract from the current time. These methods accept
  a number of minutes to add or subtract as an argument.
  - A method that compares two clock objects for equality.

D: The hours and minutes will be represented with numbers, and we will be
working with numbers each time we add or subtract from the time.

The method that returns the clock's current time as a string must convert the
hour and minutes to a string that is formatted properly: `xx:xx`

Hint/Questions:
The `at` class/static method can create a new `Clock` instance by using the
`Clock` constructor. Use a default value of `0` for the minutes if the
minute argument is omitted from the call to `at`.

You will need to override the `+` and `-` methods in the `Clock` class. Both
operators take a `Clock` object operand on the left side of the opreator,
and a number of minutes to the right. They should not mutate the `Clock`
object, and both should return a new `Clock` object.

You need to override the `==` method in the `Clock` class so that `assert_equal`
and `refute_equal` work properly.

You also need to override the `to_s` method to format the time represented by
a `Clock` object as `XX:XX`.

PEDAC: Algorithm
  constructor:
  - Save the hours and minutes.
  - There is no need to validate the arguments.

  Static/Class Method: `at`
  - Use a default value of `0` for the minutes if the 2nd argument is omitted
  - Call constructor to create a new object
  - Return the new object.

  Method: Add Minutes to Clock (+)
  - Compute minutes since midnight for `Clock` object: use helper method
  `compute minutes since midnight`
  - Add minutes argument to minutes since midnight
  - While (minutes since midnight >= 24 * 60)
    - Subtract 24 * 60 from minutes since midnight
  - Determine time represented by minutes since midnight: use helper method
  `compute time from minutes since midnight`
  - Return value returned by previous step

  Method: Subtract Minutes from Clock (-)
  - Compute minutes since midnight for `Clock` object: use helper method
  `compute minutes since midnight`
  - Subtract minutes argument from minutes since midnight.
  - While (minutes since midnight < 0)
    - Add 24 * 60 from minutes since midnight
  - Determine time represented by minutes since midnight: use helper method
  `compute time from minutes since midnight`
  - Return value returned by previous step.

  Method: Determine Equality for Two Clock Objects (==)
  - If both `Clock` objects have the same hours and minutes values, return true
  - Otherwise, return false

  Method: Return String Representation of Clock Object (to_s)
  - Format hours and minutes as `HH:MM` where `HH` and `MM` are both two digit
  numbers. If necessary, they should have leading zeros.

  Helper method: Compute Minutes Since Midnight
  - Return 60 * hours + minutes where hours and minutes are from the current
  Clock object.

  Helper method: Compute Time From Minutes Since Midnight
  - One argument: minutes since midnight
  - Return a new Clock object representing the computed time.
=end

# class Clock
#   attr_reader :hour, :minute

#   ONE_DAY = 24 * 60

#   def initialize(hour, minute)
#     @hour = hour
#     @minute = minute
#   end

#   def self.at(hour, minute=0)
#     new(hour, minute)
#   end

#   def +(add_minutes)
#     minutes_since_midnight = compute_minutes_since_midnight + add_minutes
#     while minutes_since_midnight >= ONE_DAY
#       minutes_since_midnight -= ONE_DAY
#     end

#     compute_time_from(minutes_since_midnight)
#   end

#   def -(sub_minutes)
#     minutes_since_midnight = compute_minutes_since_midnight - sub_minutes
#     while minutes_since_midnight < 0
#       minutes_since_midnight += ONE_DAY
#     end

#     compute_time_from(minutes_since_midnight)
#   end

#   def ==(other_time)
#     hour == other_time.hour && minute == other_time.minute
#   end

#   def to_s
#     format('%02d:%02d', hour, minute)
#   end

#   private

#   def compute_minutes_since_midnight
#     total_minutes = 60 * hour + minute
#     total_minutes % ONE_DAY
#   end

#   def compute_time_from(minutes_since_midnight)
#     hours, minutes = minutes_since_midnight.divmod(60)
#     hours %= 24
#     Clock.new(hours, minutes)
#   end
# end
