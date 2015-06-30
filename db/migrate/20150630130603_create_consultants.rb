class CreateConsultants < ActiveRecord::Migration
  def change
    create_table :consultants do |t|
      t.string :name
      t.string :title
      t.string :profile
      t.string :img
      t.string :mainimg

      t.timestamps null: false
    end
  end
end
