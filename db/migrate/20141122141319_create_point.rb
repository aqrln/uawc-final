class CreatePoint < ActiveRecord::Migration
  def change
    create_table :points do |t|
      t.float :lat
      t.float :lon
      t.integer :type
    end
  end
end
