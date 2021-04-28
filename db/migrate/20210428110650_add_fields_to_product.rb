class AddFieldsToProduct < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :sku, :string
    add_column :products, :weight, :integer
    add_column :products, :height, :integer
    add_column :products, :view_count, :integer
    add_column :products, :size, :string  
  end
end
