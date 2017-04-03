class AddPhotosIndex < ActiveRecord::Migration[5.0]
  def change
    add_index :photos, [:product_id, :weight]
  end
end
