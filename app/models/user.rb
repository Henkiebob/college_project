class User < ActiveRecord::Base
	has_secure_password

	validates :name, :password, :email, presence: true
	validates :password, confirmation: true
	validates :email, uniqueness: true, on: :create
	validates_format_of :email, :with => /@/
	validates :password, length: { minimum: 8 }
end
