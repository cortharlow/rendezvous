class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :author_name
      t.text :body
      t.belongs_to :itinerary

      t.timestamps null: false
    end
  end
end
