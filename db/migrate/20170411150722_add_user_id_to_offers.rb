class AddUserIdToOffers < ActiveRecord::Migration[5.0]
  def change
    add_column :offers, :user_id, :integer
    add_index :offers, :user_id
  end
end
