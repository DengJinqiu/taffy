class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.references :program, index:true
      t.references :teacher, index:true
    end
  end
end
