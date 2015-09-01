class Player < ActiveRecord::Base
	has_secure_password

	def admin?
		self.admin == 'admin'
	end

end
