class CreateHosts < ActiveRecord::Migration[6.1]
  def change
    create_table :hosts do |t|
      t.string :name
      t.integer :host_since
      t.string :location
      t.integer :age
      t.string :email
      t.string :phone
      
      t.timestamps
    end
  end
end
