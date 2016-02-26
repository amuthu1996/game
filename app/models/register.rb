class Register < ActiveRecord::Base
	self.primary_key = 'id'
	has_one :paid
	has_and_belongs_to_many :teams
end
