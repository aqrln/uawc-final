class CreateCard < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.integer :from_point_id
      t.integer :to_point_id
    end
  end
end
