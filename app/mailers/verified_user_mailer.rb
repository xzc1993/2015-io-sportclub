class VerifiedUserMailer < ApplicationMailer

	def send_verification_mail(user)
	  logger.info user.email
	  @user = user
	  mail(to: @user.email,  content_type: "text/html", subject: '[2015-io-sportclub] User verification')
	end
end
