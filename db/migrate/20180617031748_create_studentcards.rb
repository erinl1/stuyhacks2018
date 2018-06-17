class CreateStudentcards < ActiveRecord::Migration[5.1]
  def change
    create_table :studentcards do |t|
      t.belongs_to :student, foreign_key: true

      t.timestamps
    end
  end
end
