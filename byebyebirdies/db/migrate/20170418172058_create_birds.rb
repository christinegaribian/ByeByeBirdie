class CreateBirds < ActiveRecord::Migration[5.0]
  def change
    create_table :birds do |t|
      t.date :birth_date, null: false
      t.string :color, null: false
      t.string :name, null: false
      t.string :sex, limit: 1, null: false
      t.text :desciption, null: false
      t.timestamps
    end
  end
end
