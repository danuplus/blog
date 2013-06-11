class CreatePostP1Comments < ActiveRecord::Migration
  def change
    create_table :post_p1_comments do |t|
      t.string :commenter
      t.text :body
      t.references :post_p1_post

      t.timestamps
    end
    add_index :post_p1_comments, :post_p1_post_id
  end
end
