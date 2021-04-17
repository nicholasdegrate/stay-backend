class AddPasswordDisgestToHost < ActiveRecord::Migration[6.1]
  def change
    add_column :hosts, :password_digest, :string
  end
end
