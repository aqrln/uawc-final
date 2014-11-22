class AddCardIdToQueries < ActiveRecord::Migration
  def change
    add_column :queries, :card_id, :integer
  end
end
