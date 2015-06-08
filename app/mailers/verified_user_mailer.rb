class VerifiedUserMailer < ApplicationMailer

	def send_verification_mail(user)
	  @user = user
	  sdcsdfsdsdfsdsdf()
	  mail(to: @user.email, subject: '[2015-io-sportclub] User verification')
	end
end
