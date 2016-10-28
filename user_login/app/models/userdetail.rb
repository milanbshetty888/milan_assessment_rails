class Userdetail < ActiveRecord::Base
	has_many :projects
	validates :firstname, presence: true
	validates :lastname, presence: true
	validates :email, presence: true, :format => /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/
	validates :password, presence: true,on: :create, length: { minimum: 8 }, :format => /(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%&_-]).{8}/
	has_secure_password
end
