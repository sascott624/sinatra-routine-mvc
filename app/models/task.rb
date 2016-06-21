class Task < ActiveRecord::Base

  has_many :routine_tasks
  has_many :routines, through: :routine_tasks
  has_many :users, through: :routines

end
