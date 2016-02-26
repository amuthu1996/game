class Team < ActiveRecord::Base
	has_and_belongs_to_many :registers

	#attr_accessible :register_emails
	#accepts_nested_attributes_for :registers, :allow_destroy => true
	#attr_accessible :registers_attributes

	#rails_admin do
	#    configure :registers do
	#      inverse_of :teams
	      # configuration here
    #	end
  	#end
  	
end
