class AddLines < ActiveRecord::Migration[5.1]
  def change
    add_column :students, :lines, :text, array: true,  default: []
  end
end
