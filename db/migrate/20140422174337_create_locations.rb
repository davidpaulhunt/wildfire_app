class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :city
      t.string :state
      t.boolean :prevention_program

      t.timestamps
    end
  end
end
