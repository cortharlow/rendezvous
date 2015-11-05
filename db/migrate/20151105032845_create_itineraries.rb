class CreateItineraries < ActiveRecord::Migration
  def change
    create_table :itineraries do |t|
      t.belongs_to :user
      t.string :name
      t.string :photo_url
      t.string :start_date
      t.string :end_date
      t.text :description
      t.boolean :public, default: false

      t.timestamps null: false
    end
  end
end
