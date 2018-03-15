class AddFieldToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :domain, :string
    add_column :users, :link, :string
  end
end
