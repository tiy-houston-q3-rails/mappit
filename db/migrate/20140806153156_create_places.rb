class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :address, null: true
      t.decimal :latitude
      t.decimal :longitude

      t.timestamps
    end
  end
end
