class AddColumnProperties < ActiveRecord::Migration[6.0]
  def change
    add_column :properties, :prefecture_name, :string
  end
end
