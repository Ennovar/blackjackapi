class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :username
      t.integer :high_score
      t.integer :chip_count
      t.boolean :stand
      
      t.timestamps
    end
  end
end
