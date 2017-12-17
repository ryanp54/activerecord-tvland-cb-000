class Character < ActiveRecord::Base
	belongs_to :actor
	belongs_to :show

	def say_that_thing_you_say
		"#{name} always says: #{catchphrase}"
	end

	def build_show(params)
		show = Show.find_or_create_by(params)
		show.characters << self
		show	
	end

end