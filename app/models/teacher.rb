class Teacher < User
  authenticates_with_sorcery!

  has_many :assignments
  has_many :programs, :through => :assignments
  has_many :schedules, :through => :programs
  has_many :courses, :through => :programs
end
