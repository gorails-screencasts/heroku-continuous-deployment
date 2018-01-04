namespace :cron do
  task date: :environment do
    open('/home/deploy/cron.log', "a") do |f|
      f.write "#{Time.zone.now}: #{Todo.complete.count} complete and #{Todo.incomplete.count} incomplete\n"
    end
  end
end
