class CreateStations < ActiveRecord::Migration
  def change
    create_table :stations do |t|
      t.float :lat
      t.float :lon

      t.timestamps
    end
  end
end
