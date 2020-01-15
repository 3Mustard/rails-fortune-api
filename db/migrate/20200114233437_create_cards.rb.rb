class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.string :name
      t.string :arcana
      t.string :suit
      t.string :img
      t.text :fortune_telling, array: true, default: []
      t.text :keywords, array: true, default: []
      t.text :meaning_face_up, array: true, default: []
      t.text :meaning_face_down, array: true, default: []
      t.text :questions_to_ask, array: true, default: []
      t.timestamps
    end
  end
end  