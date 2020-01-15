class CreateFortunes < ActiveRecord::Migration[6.0]
  def change
    create_table :fortunes do |t|
      t.string :name
      t.integer :card_id, array: true, default: []
      t.timestamps
    end
  end
end
