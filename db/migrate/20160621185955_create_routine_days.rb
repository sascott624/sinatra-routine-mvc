class CreateRoutineDays < ActiveRecord::Migration
  def change
    create_table :routine_days do |t|
      t.integer :routine_id
      t.integer :day_id
    end
  end
end
