class AddStudentUuid < ActiveRecord::Migration[5.1]
  def change
    add_column :students, :student_uuid, :string
  end
end
