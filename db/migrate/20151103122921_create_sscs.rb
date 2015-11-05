class CreateSscs < ActiveRecord::Migration
  def change
    create_table :sscs do |t|
      t.integer :membership_id
      t.string :result
      t.date :year
      t.string :board
      t.integer :created_by_id

      t.timestamps null: false
    end
  end
end
