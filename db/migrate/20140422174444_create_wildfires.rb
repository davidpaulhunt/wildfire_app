class CreateWildfires < ActiveRecord::Migration
  def change
    create_table :wildfires do |t|
      t.date :start_date
      t.date :end_date
      t.integer :size
      t.boolean :ongoing
      t.integer :location_id

      t.timestamps
    end
  end
end
