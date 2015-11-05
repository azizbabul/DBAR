class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.integer :membership_id
      t.string :name
      t.string :father_name
      t.string :husband
      t.string :village
      t.string :postOffice
      t.string :thana
      t.string :district
      t.text :present_address
      t.string :district
      t.string :phone
      t.string :acknowledgement_name
      t.string :acknowledgement_relation
      t.string :date_of_enrollment
      t.integer :roll
      t.string :date_of_past_enrollment
      t.string :date_of_cancel
      t.integer :cancel_roll
      t.integer :status
      t.string :date_of_membership
      t.integer :created_by_id
      t.integer :updated_by_id

      t.timestamps null: false
    end
  end
end
