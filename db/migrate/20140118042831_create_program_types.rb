class CreateProgramTypes < ActiveRecord::Migration
  def change
    create_table :program_types do |t|
      t.string :name
    end
  end
end
