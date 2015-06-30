class AddDateToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :date, :string
  end
end
