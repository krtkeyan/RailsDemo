class Person < ActiveRecord::Base
	validates :name, presence: true, length: {maximum:20}
	validates :age, presence: true, :inclusion => 18..100
	validates :email, presence:true,uniqueness: true
	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
	validates :country, presence: true
	#validates_acceptance_of :accept,message:"Please Check Terms and Conditions"
end
