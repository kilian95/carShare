class RenameLiftsToRequests < ActiveRecord::Migration[5.0]
  def change
  	rename_table :lifts, :requests
  end
end
