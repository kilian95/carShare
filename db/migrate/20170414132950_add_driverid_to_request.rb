class AddDriveridToRequest < ActiveRecord::Migration[5.0]
  def change
    add_column :requests, :driverid, :integer
    add_index :requests, :driverid
  end
end
