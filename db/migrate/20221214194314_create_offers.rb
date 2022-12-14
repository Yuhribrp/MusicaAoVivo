class CreateOffers < ActiveRecord::Migration[7.0]
  def change
    create_table :offers do |t|
      t.string :price
      t.string :duration
      t.boolean :equipment
      t.date :event_date
      t.string :event_hour
      t.references :musician, null: false, foreign_key: true
      t.references :contractor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
