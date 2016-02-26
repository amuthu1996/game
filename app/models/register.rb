class Register < ActiveRecord::Base
	has_one :paid
	has_and_belongs_to_many :teams
end
