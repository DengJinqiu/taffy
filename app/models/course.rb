class Course < ActiveRecord::Base

  belongs_to :program
  belongs_to :course_type
  has_many :rosters
  has_many :students, :through => :rosters
  has_many :schedules

  def school_name
    self.program.school.name
  end

  def instrument_name
    self.program.instrument.name
  end

  def program_type
    self.program.program_type.name
  end

end
