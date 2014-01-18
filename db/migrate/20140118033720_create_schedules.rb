class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.references :course, index: true
      t.date :start_date
      t.date :end_date
      t.integer :start_time  # in minutes
      t.integer :end_time    # in minutes
      t.integer :day_of_week # 1 => Monday, 7 => Sunday
                             # between start_date and end_date
    end
  end
end
