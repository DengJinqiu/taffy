class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.references :term, index: true
      t.references :program, index: true
      t.references :course_type, index: true
      t.string :name
    end
  end
end
