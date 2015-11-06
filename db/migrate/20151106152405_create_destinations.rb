class CreateDestinations < ActiveRecord::Migration
  def change
    create_table :destinations do |t|
      t.belongs_to :itinerary
      t.string :city
      t.string :country
      t.integer :num_of_days

      t.timestamps
    end
  end
end
