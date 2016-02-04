class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
# #4
	  t.references :post, index: true, foreign_key:true
	  
      t.timestamps null: false
    end
  end
end
