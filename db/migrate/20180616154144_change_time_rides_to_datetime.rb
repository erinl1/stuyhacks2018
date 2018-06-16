class ChangeTimeRidesToDatetime < ActiveRecord::Migration[5.1]
  def change
    change_column :rides, :time, :datetime
  end
end
