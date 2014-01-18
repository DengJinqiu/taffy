class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.references :region, index: true
      t.string :name
      t.string :abbrev
      t.boolean :active
    end
  end
end
