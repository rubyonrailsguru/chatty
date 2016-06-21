class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.integer :like_id
      t.text   :body
      t.timestamps
    end
  end
end
