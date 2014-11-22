class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.integer :from_point_id
      t.integer :to_point_id

      t.timestamps
    end
  end
end
