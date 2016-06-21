class Day < ActiveRecord::Base

  has_many :routine_days
  has_many :routines, through: :routine_days
  has_many :users, through: :routines

end
