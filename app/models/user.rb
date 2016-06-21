class User < ActiveRecord::Base

  has_many :routines
  has_many :tasks, through: :routines
  has_many :days, through: :routines

end
