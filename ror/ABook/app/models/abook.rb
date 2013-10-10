class Abook < ActiveRecord::Base

require 'zip_valid'

#first name validation
validates_presence_of :first_name
validates_format_of :first_name, :with => /\A[a-zA-Z]+\z/ , :message => ": Only letters are permitted"


#last name validation
validates_presence_of :last_name
validates_format_of :last_name, :with => /\A[a-zA-Z]+\z/ , :message => ": Only letters are permitted"


#email validation
validates_presence_of :email
validates_format_of :email, :with => /\A([-a-z0-9!\#$%&'*+\/=?^_`{|}~]+\.)*[-a-z0-9!\#$%&'*+\/=?^_`{|}~]+@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
validates_uniqueness_of :email, :message => ": Email already in use"

#zip code validation
validates_presence_of :zipcode
validates_format_of :zipcode, :with => /\A[0-9]{5}\z/

#Favorite color validation
validates_presence_of :fav_color

def check_zip
	if !(ValidZip.is_legal(self.zipcode))
		errors.add :zipcode, "is not a valid zipcode"
	end
end
end
