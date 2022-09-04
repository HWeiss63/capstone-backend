class RemoveQuantityFromResponses < ActiveRecord::Migration[7.0]
  def change
    remove_column :responses, :quantity, :integer
  end
end
