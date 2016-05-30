class UserMailer < ApplicationMailer
		def cron_mail
	 		email = "tjerkdijkstra@gmail.com"
    	mail(to: email, subject: 'Cronjob heeft gelopen')
  	end
end
