class CreateShops < ActiveRecord::Migration[5.1]
  def change
    create_table :shops do |t|
      t.string :prefecture
      t.string :address_city
      t.string :address_street
      t.string :address
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
