class CreateCards < ActiveRecord::Migration[5.0]
  def change
    create_table :cards do |t|
      t.string :rank
      t.string :suit
      t.integer :user_id

      t.timestamps
    end
  end
end
