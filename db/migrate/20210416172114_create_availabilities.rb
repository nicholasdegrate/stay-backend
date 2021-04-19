class CreateAvailabilities < ActiveRecord::Migration[6.1]
  def change
    create_table :availabilities do |t|
      t.integer :min_nights
      t.integer :max_nights
      t.integer :property_id
      t.timestamps
    end
  end
end
