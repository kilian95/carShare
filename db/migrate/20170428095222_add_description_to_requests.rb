class AddDescriptionToRequests < ActiveRecord::Migration[5.0]
  def change
    add_column :lifts, :desc, :text
  end
end
