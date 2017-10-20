class AddAcceptedToRequests < ActiveRecord::Migration[5.0]
  def change
    add_column :lifts, :accepted, :boolean, default: false
  end
end
