=begin
input: a month number (1-12) and a year (e.g. 2021) on instantiation,
  day of the week and what `th` day of that month it is
output: Date object or nil

rules:
  - the `th` descriptors are strings, case insensitive
  - 'first', 'second', 'third', 'fourth', 'fifth', 'last', and 'teenth'
  - 'teenth' days: there are exactly seven (13th, 14th, 15th, 16th, 17th, 18th,
  19th) so every day of the week will have one date that is the 'teenth' of
  that day in every month
  - the 'fifth' day may not happen every month; return nil if it doesn't happen
  - days of the week are given by strings 'Monday', 'Tuesday', etc.
  - days of the week is case insensitive

Methods:
  constructor
  - initialize takes year as first argument, month as second

  #day
  - As long as the descriptor-th day of the week exists in the month,
  return a new date object corresponding to that day
  - otherwise (for the fifth), return nil
=end
# require 'pry'

# class Meetup
#   def initialize(year, month)
#     @year = year
#     @month = month
#   end

#   def day(day_name, descriptor)
#     dates = generate_dates(day_name)
#     case descriptor.downcase
#     when 'first'
#       dates.first
#     when 'second'
#       dates[1]
#     when 'third'
#       dates[2]
#     when 'fourth'
#       dates[3]
#     when 'fifth'
#       if dates[4].nil?
#         nil
#       else
#         dates[4]
#       end
#     when 'last'
#       dates.last
#     when 'teenth'
#       dates.select { |date| [13, 14, 15, 16, 17, 18, 19].include?(date.day) }.first
#     end
#   end

#   private

#   def generate_dates(day_name)
#     dates = []
#     (1..31).each do |day|
#       begin
#         dates << Date.new(@year, @month, day)
#       rescue
#         next
#       end
#     end
#     days = []
#     dates.each { |date| days << date if date.cwday == cwday_converter(day_name) }
#     days
#   end

#   def cwday_converter(day_name)
#     case day_name.downcase
#     when 'monday'
#       1
#     when 'tuesday'
#       2
#     when 'wednesday'
#       3
#     when 'thursday'
#       4
#     when 'friday'
#       5
#     when 'saturday'
#       6
#     when 'sunday'
#       7
#     end
#   end
# end

=begin
Launch School PEDAC Process
P: Understanding The Problem
  The details we need to keep in mind are as follows:
  - April, June, September, and November have 30 days
  - February has 28 in most years, but 29 in leap years.
  - All the other months have 31 days
  - The first day of the week of the month (DOWM) is always between the 1st
  and the 7th of the month
  - The second DOWM is between the 8th and 14th of the month
  - The third DOWM is between the 15th and 21st of the month
  - The fourth DOWM is between the 22nd and 28th of the month
  - The fifth DOWM is between the 29th and 31st of the month
  - The last DOWM is between the 22nd and 31st of the month depending on the
  number of days in the month.

E: Examples and Test Cases
  From the test cases, we can see that we need to create a `Meetup` class. The
class should have 2 methods as follows:
  - a constructor that takes the year (e.g. 2020) and a month number (1-12)
  - A method that determines the date of the meetup in the specified year and
  month. This method takes a day of week (e.g. 'Monday' or 'Friday') and a
  schedule descriptor ('first', 'last', 'teenth', etc.) It returns the date
  as a `Date` object.

D: Data Structures
  From the test cases, it looks like we will be working with `Date` objects
in our language of choice.

Hints/Questions:
  - Determine the 7 day period in which the meetup will occur.
  - Search the range of dates that contain the meetup date for the date that
  matches the desired day of week.
  - Month numbers in Ruby `Date` objects range from 1 to 12
  - To determine the number of days in a specific month, you don't have to know
  whether the year is a leap year, nor do you need to provide a list that shows
  the number of days in each month. You can determine the last day of the month
  by using the `Date` class by passing a day argument of `-1` to the
  `Date.civil` method to create a `Date` object that represents the last day
  of the indicated year and month.

Algorithm:
  constructor:
  - Save the year and month
  - Determine the last day of the month

  day:
  - Convert the weekday and schedule descriptor to lowercase
  - Calculate the first possible day of the month for the meetup
  - Calculate the last possible day of the month for the meetup
  - Search the range of possible days for the date that occurs on the desired
  day of the week
  - Return a date object for the first matching day or a value that indicates
  that a meetup date couldn't be found
=end

class Meetup
  SCHEDULE_START_DAY = {
    'first' => 1,
    'second' => 8,
    'third' => 15,
    'fourth' => 22,
    'fifth' => 29,
    'teenth' => 13,
    'last' => nil
  }.freeze

  def initialize(year, month)
    @year = year
    @month = month
    @days_in_month = Date.civil(@year, @month, -1).day
  end

  def day(weekday, schedule)
    weekday = weekday.downcase
    schedule = schedule.downcase

    first_possible_day = first_day_to_search(schedule)
    last_possible_day = [first_possible_day + 6, @days_in_month].min

    (first_possible_day..last_possible_day).detect do |day|
      date = Date.civil(@year, @month, day)
      break date if day_of_week_is?(date, weekday)
    end
  end

  private

  def first_day_to_search(schedule)
    SCHEDULE_START_DAY[schedule] || (@days_in_month - 6)
  end

  # rubocop:disable Metrics/CyclomaticComplexity
  def day_of_week_is?(date, weekday)
    case weekday
    when 'monday' then date.monday?
    when 'tuesday' then date.tuesday?
    when 'wednesday' then date.wednesday?
    when 'thursday' then date.thursday?
    when 'friday' then date.friday?
    when 'saturday' then date.saturday?
    when 'sunday' then date.sunday?
    end
  end
  # rubocop:enable Metrics/CyclomaticComplexity
end
