class AddTimeColumn < ActiveRecord::Migration[5.1]
  def change
      add_column :schools, :start_time, :time
  end
end
