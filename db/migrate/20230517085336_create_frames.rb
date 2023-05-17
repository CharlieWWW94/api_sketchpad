class CreateFrames < ActiveRecord::Migration[7.0]
  def change
    create_table :frames do |t|
      t.string :name
      t.integer :width
      t.integer :height
      t.string :content
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
