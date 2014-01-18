class CreateEnrollments < ActiveRecord::Migration
  def change
    create_table :enrollments do |t|
      r.references :student, index: true
      r.references :program, index: true
    end
  end
end
