class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.integer :sr_no
      t.string :name
      t.integer :copy
      t.string :images

      t.timestamps null: false
    end
  end
end
