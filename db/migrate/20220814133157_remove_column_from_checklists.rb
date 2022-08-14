class RemoveColumnFromChecklists < ActiveRecord::Migration[7.0]
  def change
    remove_column :checklists, :quantity, :integer
    remove_column :checklists, :user_id, :integer
    remove_column :checklists, :prepared, :boolean
  end
end
