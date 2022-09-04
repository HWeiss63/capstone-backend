class AddItemnameToResponses < ActiveRecord::Migration[7.0]
  def change
    add_column :responses, :item_name, :string
  end
end
