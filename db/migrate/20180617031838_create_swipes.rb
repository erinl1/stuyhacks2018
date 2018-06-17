class CreateSwipes < ActiveRecord::Migration[5.1]
  def change
    create_table :swipes do |t|
      t.belongs_to :studentcard, foreign_key: true
      t.datetime :time

      t.timestamps
    end
  end
end
