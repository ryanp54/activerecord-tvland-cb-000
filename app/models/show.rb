class Show < ActiveRecord::Base
	has_many :characters
	belongs_to :network
	has_many :actors, through: :characters

	def build_network(params)
		network = Network.find_or_create_by(params)
		network.shows << self
		network
	end

end