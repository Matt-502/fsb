class CreateProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :properties do |t|
      t.integer :user_id
      t.integer :postcode
      t.integer :prefecture_code
      t.string :address_city
      t.string :address_street
      t.string :address_building
      t.string :title
      t.string :description
      t.string :details
      t.integer :price
      t.string :hobby
      t.string :layout
      t.string :location
      

      t.timestamps
    end
  end
end
