class User < ActiveRecord::Base

	def self.create_with_omniauth(auth)
		create do |user|
			user.github_uid = 			auth["uid"]
			user.name = 						auth["info"]["name"]
			user.email = 						auth["info"]["email"]
			user.github_username = 	auth["info"]["nickname"]
			user.avatar_url = 			auth["info"]["image"]
		end
	end

	def find_by_github_uid(github_uid)
		User.find_by(github_uid: github_uid)
	end
end