class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :photo_url
      t.string :city
      t.string :password_digest
    end
  end
end
