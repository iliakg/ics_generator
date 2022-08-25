module IcsGenerator
  module Timezones
    class Moscow
      TZID = 'Europe/Moscow'

      def self.rule
        timezone = Icalendar::Timezone.new.tap { |t| t.tzid = TZID }

        timezone.standard do |standard|
          standard.tzoffsetfrom = Icalendar::Values::UtcOffset.new('+0300')
          standard.tzoffsetto = Icalendar::Values::UtcOffset.new('+0300')
          standard.tzname = 'MSK'
          standard.dtstart = Icalendar::Values::DateTime.new('19700101T000000')
        end

        timezone
      end
    end
  end
end
