class AddDriveridToOffers < ActiveRecord::Migration[5.0]
  def change
    add_column :offers, :driverid, :integer
  end
end
