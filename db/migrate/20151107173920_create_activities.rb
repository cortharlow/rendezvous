class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.belongs_to :destination
      t.integer :day_num
      t.string :name
      t.string :location
      t.string :cost
      t.string :photo_url
      t.text :notes

      t.timestamps
    end
  end
end
