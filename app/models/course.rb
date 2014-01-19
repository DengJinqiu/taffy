class Course < ActiveRecord::Base

  belongs_to :program
  has_many :rosters
  has_many :students, :through => :rosters
  has_many :schedules
end
