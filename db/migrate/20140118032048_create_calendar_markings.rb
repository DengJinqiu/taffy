class CreateCalendarMarkings < ActiveRecord::Migration
  def change
    create_table :calendar_markings do |t|
      t.string :name
      t.string :abbrev
    end
  end
end
