class CreateQueries < ActiveRecord::Migration
  def change
    create_table :queries do |t|
      t.integer :point_id
      t.float :lat
      t.float :lon
      t.integer :type
      t.integer :card_id
      t.boolean :checkin

      t.timestamps
    end
  end
end
