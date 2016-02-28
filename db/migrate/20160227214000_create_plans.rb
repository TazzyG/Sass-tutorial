class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.string :stripe_id
      t.string :name
      t.integer :price
      t.string :intervals

      t.timestamps null: false
    end
  end
end
