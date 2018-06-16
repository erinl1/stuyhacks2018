class CreateRides < ActiveRecord::Migration[5.1]
  def change
    create_table :rides do |t|
      t.date :time
      t.string :station
      t.belongs_to :metrocard, foreign_key: true

      t.timestamps
    end
  end
end
