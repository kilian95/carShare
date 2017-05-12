class RemoveDriveridFromRequests < ActiveRecord::Migration[5.0]
  def change
    remove_column :requests, :driverid, :integer
  end
end
