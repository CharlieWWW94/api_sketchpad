class AddPadReferenceToFrame < ActiveRecord::Migration[7.0]
  def change
    add_reference :frames, :pad, null: false, foreign_key: true
  end
end
