module IcsGenerator
  module Data
    class ArsenalEuropaLeague22
      TIMEZONE = Timezones::London.rule

      EVENTS = [
        {date: '08/09/2022', time: '17:45', summary: 'FC Zurich', description: 'AWAY / Europa League / 1 round'},
        {date: '15/09/2022', time: '20:00', summary: 'PSV Eindhoven', description: 'HOME / Europa League / 2 round'},
        {date: '06/10/2022', time: '20:00', summary: 'Bodo/Glimt', description: 'HOME / Europa League / 3 round'},
        {date: '13/10/2022', time: '17:45', summary: 'Bodo/Glimt', description: 'AWAY / Europa League / 4 round'},
        {date: '27/10/2022', time: '17:45', summary: 'PSV Eindhoven', description: 'AWAY / Europa League / 5 round'},
        {date: '03/11/2022', time: '20:00', summary: 'FC Zurich', description: 'HOME / Europa League / 6 round'}
      ]
    end
  end
end
