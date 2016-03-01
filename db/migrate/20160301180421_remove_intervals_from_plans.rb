class RemoveIntervalsFromPlans < ActiveRecord::Migration
  def change
    remove_column :plans, :intervals, :string
    add_column :plans, :interval, :string
  end
end
