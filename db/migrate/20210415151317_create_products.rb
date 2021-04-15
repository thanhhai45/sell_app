class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.float :price
      t.float :original_price
      t.integer :rating
      t.integer :rating_count
      t.integer :like_count
      t.integer :comments_count
      t.integer :status
      t.string :supplier
      t.float :amount 
      t.belongs_to :category, foreign_key: true
      t.timestamps
    end
  end
end
