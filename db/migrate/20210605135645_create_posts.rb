class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.text :content
      t.string :author, null: false
      t.string :image, null: false

      t.belongs_to :categories, foreign_key: true

      t.timestamps
    end
  end
end
