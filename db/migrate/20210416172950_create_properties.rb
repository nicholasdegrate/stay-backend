class CreateProperties < ActiveRecord::Migration[6.1]
  def change
    create_table :properties do |t|
      t.string :property_type
      t.string :rate
      t.string :address_name
      t.string :address_description
      t.string :guest
      t.string :location
      t.float :price
      t.string :bedrooms
      t.string :bathrooms
      t.string :door
      t.string :energy 
      t.string :noise 


      t.belongs_to :host, null: false, foreign_key: true

      t.timestamps
    end
  end
end
