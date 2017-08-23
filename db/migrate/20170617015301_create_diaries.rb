class CreateDiaries < ActiveRecord::Migration
  def change
    create_table :diaries do |t|
      t.string :title
      t.text :text
      t.integer :user_id
      t.timestamps null: false
    end
  end
end
