class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :photos do |t|
      t.belongs_to :product
      t.integer :weight, default: 0
      t.attachment :image 
      t.timestamps
    end
  end
end
