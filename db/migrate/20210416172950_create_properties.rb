class CreateProperties < ActiveRecord::Migration[6.1]
  def change
    create_table :properties do |t|
      t.string :property_type
      t.string :rate
      t.string :address
      t.string :bedrooms
      t.string :bathrooms
      t.belongs_to :host, null: false, foreign_key: true

      t.timestamps
    end
  end
end
