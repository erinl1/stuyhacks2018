class AddNewColumnToMyTable < ActiveRecord::Migration[5.1]
  def change
    add_column :students, :time_to_school, :integer
  end
end
