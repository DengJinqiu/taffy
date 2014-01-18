class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.refereneces :region, index: true
      t.string :name
      t.string :abbrev
      t.bool :active
    end
  end
end
