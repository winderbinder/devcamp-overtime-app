namespace :notification do
  desc "send sms notifications to employees asking them to log if they are going into overtime"
  task sms: :environment do
  if Time.now.sunday?
    employees = Employee.all
    notification_message = "Please log into the overtime management dashboard to request overtime or confirm your hours for last week: https://alonso-overtime-app.herokuapp.com"
        

     employees.each do |employee|
       SmsTool.send_sms(number: employee.phone, message: notification_message)
      end
    end
  end

  desc "Sends email notifications to managers (admin users) each do to inform them of pending overtime"
  task manager_email: :environment do
    
    
    
   
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
