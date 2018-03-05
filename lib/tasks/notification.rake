namespace :notification do
  desc "send sms notifications to employees asking them to log if they are going into overtime"
  task sms: :environment do
    puts "im in a rails test"
  end

end
