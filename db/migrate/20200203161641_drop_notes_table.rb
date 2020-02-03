class DropNotesTable < ActiveRecord::Migration[6.0]
  def change
    drop_table :notes do |t|
      t.integer :fortune_id, null: false
      t.timestamps null: false
    end
  end
end
