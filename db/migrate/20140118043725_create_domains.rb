class CreateDomains < ActiveRecord::Migration
  def change
    create_table :domains do |t|
      t.references :region, index: true
      t.references :user, index: true
    end
  end
end
