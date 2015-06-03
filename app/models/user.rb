class User < ActiveRecord::Base
	#Adds the following 2 helper methods:
	#1 - A method that uses BCrypt to encrypt our password so it 
	#is ready to be saved in the database
	#2 - A method that checks to see if password and 
	#password_confirmation are the same before the user is actually saved.
	has_secure_password
end
