class CreateGCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :g_characters do |t|
      t.integer :character_id
      t.integer :group_id

      t.timestamps
    end
  end
end
