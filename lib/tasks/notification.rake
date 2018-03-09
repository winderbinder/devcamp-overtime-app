namespace :notification do
  desc "send sms notifications to employees asking them to log if they are going into overtime"
  task sms: :environment do
    if Time.now.sunday?
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

  desc "Sends email notifications to managers (admin users) each do to inform them of pending overtime"
  task manager_email: :environment do
    # 1. Iterate over the list of pending overtime requests
    # 2. check to see if there are any requests
    # 3. Iterate over the list of admin users/manager
    # 4. Send the email to each admin
    submitted_posts = Post.submitted
    admin_users = AdminUser.all

    if submitted_posts.count > 0
      admin_users.each do |admin|
        puts "Manager stuff"
        ManagerMailer.email(admin).deliver_later
      end
    end
  end
end
