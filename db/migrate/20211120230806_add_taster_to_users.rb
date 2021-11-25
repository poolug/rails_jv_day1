class AddTasterToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :taster, :boolean
  end
end
