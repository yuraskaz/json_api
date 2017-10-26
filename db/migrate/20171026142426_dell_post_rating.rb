class DellPostRating < ActiveRecord::Migration[5.1]
  def change
  	remove_column :posts, :rating
  end
end
