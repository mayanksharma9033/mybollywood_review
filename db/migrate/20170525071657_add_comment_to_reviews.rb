class AddCommentToReviews < ActiveRecord::Migration[5.0]
  def change
    add_column :reviews, :comment, :text
  end
end
