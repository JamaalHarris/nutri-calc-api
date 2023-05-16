class AddMeasurementToFavorites < ActiveRecord::Migration[7.0]
  def change
    add_column :favorites, :measurement, :string
  end
end
