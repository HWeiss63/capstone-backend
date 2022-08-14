class AddColumnToChecklists < ActiveRecord::Migration[7.0]
  def change
    add_column :checklists, :type, :string
  end
end
