class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :chapter, default: 0, null: false, limit: 1
      t.string :character_image_id
      t.integer :menu, default: 0, null: false, limit: 1
      t.string :nenn_name
      t.text :detail
      t.datetime :deleted_at
      t.integer :g_character_id


      t.timestamps
    end
  end
end
