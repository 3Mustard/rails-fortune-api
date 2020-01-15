class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.string :name
      t.string :arcana
      t.string :suit
      t.string :img
      t.text :fortune_telling, array: true, default: []
      t.text :keywords, array: true, default: []
      t.text :meanings
      t.belongs_to :fortune 
      t.timestamps
    end
  end
end