class AddIdColumn < ActiveRecord::Migration[5.1]
  def change
    add_column :students, :metro_uuid, :string
  end
end
