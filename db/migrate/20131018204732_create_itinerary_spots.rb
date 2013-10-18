class CreateItinerarySpots < ActiveRecord::Migration
  def change
    create_table :itinerary_spots do |t|
      t.references :itinerary, index: true
      t.references :spot, index: true
      t.string :description

      t.timestamps
    end
  end
end
