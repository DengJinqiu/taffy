class CreateTerms < ActiveRecord::Migration
  def change
    create_table :terms do |t|
      t.string :name
      t.date :start_date # the start date of this term
      t.date :end_date   # the end date of this term
      t.boolean :current
    end
  end
end
