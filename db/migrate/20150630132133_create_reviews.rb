class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :author
      t.string :text
      t.integer :votes

      t.timestamps null: false
    end
  end
end
