module IcsGenerator
  module Timezones
    class London
      TZID = 'Europe/London'

      def self.rule
        timezone = Icalendar::Timezone.new.tap { |t| t.tzid = TZID }

        timezone.daylight do |daylight|
          daylight.tzoffsetfrom = Icalendar::Values::UtcOffset.new('+0000')
          daylight.tzoffsetto = Icalendar::Values::UtcOffset.new('+0100')
          daylight.tzname = 'BST'
          daylight.dtstart = Icalendar::Values::DateTime.new('19700329T010000')
          daylight.rrule = Icalendar::Values::Recur.new('FREQ=YEARLY;BYMONTH=3;BYDAY=-1SU')
        end

        timezone.standard do |standard|
          standard.tzoffsetfrom = Icalendar::Values::UtcOffset.new('+0100')
          standard.tzoffsetto = Icalendar::Values::UtcOffset.new('+0000')
          standard.tzname = 'GMT'
          standard.dtstart = Icalendar::Values::DateTime.new('19701025T020000')
          standard.rrule = Icalendar::Values::Recur.new('FREQ=YEARLY;BYMONTH=10;BYDAY=-1SU')
        end

        timezone
      end
    end
  end
end
