class ChangeFlashCardColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :cards, :front, :korean
    rename_column :cards, :back, :english
  end
end
