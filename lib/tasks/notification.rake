namespace :notification do
  desc "send sms notifications to employees asking them to log if they are going into overtime"
  task sms: :environment do
    # Schedule to run at Sunday at 5pm
    # Iterate over all employees
    # Skip AdminUsers
    # Send a message that has intructions and a link to log time    
    # User.all.each do |user|
    #   SmsTool.send_sms()
    # end
    # number: "555-555-3323"
    # number: "5555553323"
  end

end
