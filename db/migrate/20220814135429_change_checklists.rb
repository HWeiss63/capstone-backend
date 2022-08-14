class ChangeChecklists < ActiveRecord::Migration[7.0]
  def change
    change_table :checklists do |t|
      t.rename :type, :category
    end
  end
end
