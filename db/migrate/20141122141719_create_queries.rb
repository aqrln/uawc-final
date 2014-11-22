class CreateQueries < ActiveRecord::Migration
  def change
    create_table :queries do |t|
      t.integer :point_id
      t.integer :in_card_id
      t.integer :out_card_id
      t.timestamp :checkin
      t.timestamp :checkout
    end
  end
end
