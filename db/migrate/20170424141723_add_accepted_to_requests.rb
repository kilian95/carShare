class AddAcceptedToRequests < ActiveRecord::Migration[5.0]
  def change
    add_column :requests, :accepted, :boolean, default: false
  end
end
