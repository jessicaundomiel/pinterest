class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
	has_many :pins
	has_many :boards

	def is_admin?
		self.email && ENV['ADMIN_EMAILS'].to_s.include?(self.email)
	end

	def full_name
		"#{first_name} #{last_name}"
	end
end
