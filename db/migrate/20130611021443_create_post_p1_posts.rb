class CreatePostP1Posts < ActiveRecord::Migration
  def change
    create_table :post_p1_posts do |t|
      t.string :name
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
