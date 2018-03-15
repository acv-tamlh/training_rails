class AddFieldToPerson < ActiveRecord::Migration[5.1]
  def change
    add_column :people, :domain, :string
    add_column :people, :link, :string
  end
end
