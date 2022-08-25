require 'pry'
require 'icalendar'

Dir[File.join(__dir__, 'ics_generator', 'timezones', '*.rb')].each { |file| require file }
Dir[File.join(__dir__, 'ics_generator', 'data', '*.rb')].each { |file| require file }
require './ics_generator/service'

module IcsGenerator
end
