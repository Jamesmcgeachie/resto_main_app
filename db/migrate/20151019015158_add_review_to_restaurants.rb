class AddReviewToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :review, :string
  end
end
