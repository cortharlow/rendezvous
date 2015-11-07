class CreateDetails < ActiveRecord::Migration
  def change
    create_table :details do |t|
      t.belongs_to :destination
      t.string :accommodation_name
      t.string :accommodation_address
      t.string :accommodation_checkin
      t.string :accommodation_checkout
      t.string :accommodation_cost
      t.text :accommodation_notes

      t.string :user_name
      t.string :transportation_type
      t.string :transportation_company_number
      t.string :transportation_departure_location
      t.string :transportation_departure_datetime
      t.string :transportation_arrival_location
      t.string :transportation_arrival_datetime
      t.string :transportation_cost

      t.timestamps
    end
  end
end
