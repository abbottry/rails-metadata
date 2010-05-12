class CreateVehicles < ActiveRecord::Migration
  def self.up
    create_table :vehicles do |t|
      t.string :type
      t.string :color
      t.integer :seat_count
      t.text :metadata

      t.timestamps
    end
  end

  def self.down
    drop_table :vehicles
  end
end
