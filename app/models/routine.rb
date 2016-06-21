class Routine < ActiveRecord::Base

  belongs_to :user
  has_many :routine_tasks
  has_many :tasks, through: :routine_tasks
  has_many :routine_days
  has_many :days, through: :routine_days

end
