class AddDriveridToRequests < ActiveRecord::Migration[5.0]
  def change
    add_column :lifts, :driverid, :integer
  end
end
