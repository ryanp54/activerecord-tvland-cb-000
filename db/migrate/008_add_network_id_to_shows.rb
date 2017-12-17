class AddNetworkIdToShows < ActiveRecord::Migration
	def change
		add_column :shows, :network_id, :string
	end	
end