class AddDriveridToRequest < ActiveRecord::Migration[5.0]
  def change
    add_column :lifts, :driverid, :integer
    add_index :lifts, :driverid
  end
end
