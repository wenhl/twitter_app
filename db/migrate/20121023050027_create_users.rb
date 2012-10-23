class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :text
      t.string :profile_image_url
      t.string :from_user
      t.string :from_user_name
      t.string :source

      t.timestamps
    end
  end
end
