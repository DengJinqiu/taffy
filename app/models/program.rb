class Program < ActiveRecord::Base

  belongs_to :school
  belongs_to :program_type
  belongs_to :instrument
  has_many :courses
  has_many :schedules, :through => :courses
  has_many :assignments
end
