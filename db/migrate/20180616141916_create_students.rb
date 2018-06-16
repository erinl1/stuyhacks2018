class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :name
      t.integer :student_id
      t.string :address
      t.belongs_to :school, foreign_key: true

      t.timestamps
    end
  end
end
