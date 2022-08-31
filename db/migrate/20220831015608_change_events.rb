class ChangeEvents < ActiveRecord::Migration[7.0]
  def change
    change_table :events do |t|
      t.remove :date, :time
      t.datetime :start
      t.datetime :end
    end
  end
end
