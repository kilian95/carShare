class CreateOffers < ActiveRecord::Migration[5.0]
  def change
    create_table :offers do |t|
      t.string :departure
      t.string :destination
      t.datetime :time
      t.integer :seats

      t.timestamps
    end
  end
end
