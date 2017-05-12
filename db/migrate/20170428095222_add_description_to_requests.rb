class AddDescriptionToRequests < ActiveRecord::Migration[5.0]
  def change
    add_column :requests, :desc, :text
  end
end
