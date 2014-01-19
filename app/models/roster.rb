class Roster < ActiveRecord::Base

  belongs_to :course
  belongs_to :student
  has_many :attendances
end
