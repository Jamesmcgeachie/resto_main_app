class RemoveReviewFromRestaurants < ActiveRecord::Migration
  def change
    remove_column :restaurants, :review, :string
  end
end
