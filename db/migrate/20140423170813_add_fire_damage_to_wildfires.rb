class AddFireDamageToWildfires < ActiveRecord::Migration
  def change
    add_column :wildfires, :fire_damage, :string
  end
end
