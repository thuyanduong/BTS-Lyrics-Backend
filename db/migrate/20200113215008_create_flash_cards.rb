class CreateFlashCards < ActiveRecord::Migration[5.2]
  def change
    create_table :flash_cards do |t|
      t.integer :category_id
      t.integer :card_id
      t.timestamps
    end
  end
end
