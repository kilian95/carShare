class AddDateToLift < ActiveRecord::Migration[5.0]
  def change
    add_column :lifts, :time, :datetime
  end
end
