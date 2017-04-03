class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.integer :category_id
      t.string :title
      t.integer :amount, default: 0
      t.decimal :price, precision: 10, scale: 2
      t.string :uuid
      t.text :description
      t.timestamps
    end

    add_index :products, [:category_id]
    add_index :products, [:title]
    add_index :products, [:uuid], unique: true
  end
end
