class CreateAvailabilities < ActiveRecord::Migration[6.1]
  def change
    create_table :availabilities do |t|
      t.integer :min_nights
      t.integer :max_nights

      t.timestamps
    end
  end
end
