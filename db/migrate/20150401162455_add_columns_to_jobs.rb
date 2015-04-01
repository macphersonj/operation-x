class AddColumnsToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :title, :string
    add_column :jobs, :close_date, :date
  end
end
