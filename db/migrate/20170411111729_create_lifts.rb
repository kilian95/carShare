class CreateLifts < ActiveRecord::Migration[5.0]
  def change
    create_table :lifts do |t|
      t.string :destination
      t.string :departure

      t.timestamps
    end
  end
end
