class CreateFortunes < ActiveRecord::Migration[6.0]
  def change
    create_table :fortunes do |t|

      t.timestamps
    end
  end
end
