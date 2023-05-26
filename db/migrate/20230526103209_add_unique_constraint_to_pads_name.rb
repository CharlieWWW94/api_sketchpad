class AddUniqueConstraintToPadsName < ActiveRecord::Migration[7.0]
  def change
    # The array sets the pair as unique, together.
    add_index :pads, [:name, :user_id],
    unique: true,
    comment: "User cannot have multiple pads with same name."
  end
end
