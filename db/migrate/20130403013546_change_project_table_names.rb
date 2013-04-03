class ChangeProjectTableNames < ActiveRecord::Migration
	def change
  		rename_table :websites, :webs
  		rename_table :brands, :brandings
  	end
end
