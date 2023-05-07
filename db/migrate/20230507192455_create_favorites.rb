class CreateFavorites < ActiveRecord::Migration[7.0]
  def change
    create_table :favorites do |t|
      t.integer :user_id
      t.string :favorited_item
      t.integer :quantity

      t.timestamps
    end
  end
end
