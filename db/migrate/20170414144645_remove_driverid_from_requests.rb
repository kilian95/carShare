class RemoveDriveridFromRequests < ActiveRecord::Migration[5.0]
  def change
    remove_column :lifts, :driverid, :integer
  end
end
