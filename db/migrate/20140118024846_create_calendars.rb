class CreateCalendars < ActiveRecord::Migration
  def change
    create_table :calendars do |t|
      t.references :term, index: true
      t.references :school, index: true
      t.references :calendar_marking, index: true
      t.date :date
      t.integer :start_time # in minutes
      t.integer :end_time   # in minutes
    end
  end
end
