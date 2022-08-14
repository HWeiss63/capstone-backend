class CreateResponses < ActiveRecord::Migration[7.0]
  def change
    create_table :responses do |t|
      t.integer :checklist_id
      t.integer :user_id
      t.integer :quantity
      t.boolean :prepared, :default => false

      t.timestamps
    end
  end
end
