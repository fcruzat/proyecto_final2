class AddReviewsToServices < ActiveRecord::Migration[5.2]
  def change
    add_reference :services, :review, foreign_key: true
  end
end
