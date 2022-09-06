class ChangeEventsmemo < ActiveRecord::Migration[7.0]
  def change
    change_table :events do |t|
      t.rename :memo, :class
    end
  end
end
