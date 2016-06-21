class CreteRoutineTasks < ActiveRecord::Migration
  def change
    create_table :routine_tasks do |t|
      t.integer :routine_id
      t.integer :task_id
    end
  end
end
