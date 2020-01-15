class CreateFortunes < ActiveRecord::Migration[6.0]
  def change
    create_table :fortunes do |t|
      t.string :name
      t.timestamps
    end
  end
end
