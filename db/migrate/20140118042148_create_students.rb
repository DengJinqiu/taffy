class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.references :school, index: true
      t.string :first_name
      t.string :last_name
      t.bool :active
    end
  end
end
