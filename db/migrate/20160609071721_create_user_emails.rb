class CreateUserEmails < ActiveRecord::Migration
  def change
    create_table :user_emails do |t|
      t.string :email
      t.text :body
      t.text :subject
      t.string :attachment 
      t.integer :user_id
      t.timestamps
    end
  end
end
