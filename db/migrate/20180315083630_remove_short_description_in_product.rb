class RemoveShortDescriptionInProduct < ActiveRecord::Migration[5.1]
  def change
  	remove_column short_description:string
  end
end
