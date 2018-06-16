class CreateMetrocards < ActiveRecord::Migration[5.1]
  def change
    create_table :metrocards do |t|
      t.belongs_to :student, foreign_key: true

      t.timestamps
    end
  end
end
