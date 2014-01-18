class CreateAttendances < ActiveRecord::Migration
  def change
    create_table :attendances do |t|
      t.references :roster, index: true
      t.references :teacher, index: true
      t.references :attendance_marking, index: true
      t.date :date
    end
  end
end
