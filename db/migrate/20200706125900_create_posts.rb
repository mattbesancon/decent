class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :author
      t.text :content
      t.float :rating

      t.timestamps
    end
  end
end
