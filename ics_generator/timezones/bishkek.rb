module IcsGenerator
  module Timezones
    class Bishkek
      TZID = 'Asia/Bishkek'

      def self.rule
        timezone = Icalendar::Timezone.new.tap { |t| t.tzid = TZID }

        timezone.standard do |standard|
          standard.tzoffsetfrom = Icalendar::Values::UtcOffset.new('+0600')
          standard.tzoffsetto = Icalendar::Values::UtcOffset.new('+0600')
          standard.tzname = '+06'
          standard.dtstart = Icalendar::Values::DateTime.new('19700101T000000')
        end

        timezone
      end
    end
  end
end
