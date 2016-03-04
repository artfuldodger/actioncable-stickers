class CreateStickers < ActiveRecord::Migration[5.0]
  def change
    create_table :stickers do |t|
      t.string :url
      t.integer :x
      t.integer :y

      t.timestamps
    end
  end
end
