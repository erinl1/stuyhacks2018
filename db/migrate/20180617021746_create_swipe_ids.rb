class CreateSwipeIds < ActiveRecord::Migration[5.1]
  def change
    create_table :swipe_ids do |t|
      t.belongs_to :student, foreign_key: true
      t.datetime :time

      t.timestamps
    end
  end
end
