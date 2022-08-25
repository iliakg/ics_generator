require_relative '../ics_generator'

desc 'Genarate ics events!'
namespace :ics do
  task :generate do
    IcsGenerator::Service.run
  end
end
