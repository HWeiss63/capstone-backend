class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :title
      t.string :date
      t.string :time
      t.string :location
      t.string :memo
      t.integer :user_id

      t.timestamps
    end
  end
end
