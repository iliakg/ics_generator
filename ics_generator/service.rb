require 'date'
require 'time'

module IcsGenerator
  class Service
    def self.run
      data = IcsGenerator::Data::ArsenalPremierLeague2223
      # data = IcsGenerator::Data::Formula22

      cal = Icalendar::Calendar.new
      cal.add_timezone data::TIMEZONE

      data::EVENTS.each do |ev|
        d = Date.parse(ev[:date])
        t = Time.parse("#{ev[:time]} #{data::TIMEZONE.tzid}")
        dt = DateTime.new(d.year, d.month, d.day, t.hour, t.min, t.sec, t.zone)

        event = Icalendar::Event.new
        event.dtstart = Icalendar::Values::DateTime.new(dt, tzid: data::TIMEZONE.tzid)
        event.dtend   = Icalendar::Values::DateTime.new(dt + 120/1440.0, tzid: data::TIMEZONE.tzid) # + 120 minutes
        event.summary = ev[:summary]
        event.description = ev[:description]
        cal.add_event(event)
      end

      filename = data.to_s.split('::').last
      File.write("./events/#{filename}.ics", cal.to_ical)

      puts "!!! #{filename} IS GENERATED !!!"
    end
  end
end
