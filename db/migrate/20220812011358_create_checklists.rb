class CreateChecklists < ActiveRecord::Migration[7.0]
  def change
    create_table :checklists do |t|
      t.string :item_name
      t.integer :quantity
      t.boolean :prepared, :default => false
      t.integer :user_id
      t.timestamps
    end
  end
end
