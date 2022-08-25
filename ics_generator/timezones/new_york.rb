module IcsGenerator
  module Timezones
    class NewYork
      TZID = 'America/New_York'

      def self.rule
        timezone = Icalendar::Timezone.new.tap { |t| t.tzid = TZID }

        timezone.daylight do |daylight|
          daylight.tzoffsetfrom = Icalendar::Values::UtcOffset.new('-0500')
          daylight.tzoffsetto = Icalendar::Values::UtcOffset.new('-0400')
          daylight.tzname = 'EDT'
          daylight.dtstart = Icalendar::Values::DateTime.new('19700308T020000')
          daylight.rrule = Icalendar::Values::Recur.new('FREQ=YEARLY;BYMONTH=3;BYDAY=2SU')
        end

        timezone.standard do |standard|
          standard.tzoffsetfrom = Icalendar::Values::UtcOffset.new('-0400')
          standard.tzoffsetto = Icalendar::Values::UtcOffset.new('-0500')
          standard.tzname = 'EST'
          standard.dtstart = Icalendar::Values::DateTime.new('19701101T020000')
          standard.rrule = Icalendar::Values::Recur.new('FREQ=YEARLY;BYMONTH=11;BYDAY=1SU')
        end

        timezone
      end
    end
  end
end
