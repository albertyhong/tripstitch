class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :trip_name
      t.string :start_date
      t.string :end_date
      t.string :creator
      t.integer :user_id

      t.timestamps
    end
  end
end
