class CreatePads < ActiveRecord::Migration[7.0]
  def change
    create_table :pads do |t|
      t.string :name, null: false
      t.integer :frame_count, default: 0
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
