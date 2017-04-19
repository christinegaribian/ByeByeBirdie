class CreateBirdRentalRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :bird_rental_requests do |t|
      t.integer :bird_id, null: false
      t.date :start_date, null: false
      t.date :end_date, null: false
      t.string :status, default: "PENDING"

      t.timestamps
    end

    add_index :bird_rental_requests, :bird_id
  end
end
