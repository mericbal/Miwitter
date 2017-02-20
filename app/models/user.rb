class User < ApplicationRecord
	has_secure_password
	validates :username, :email, presence: true
	validates :username, :email, uniqueness: true
	validates :password, length: { minimum: 3, too_short: ' has to be more than %{count} characters. ' }
end
