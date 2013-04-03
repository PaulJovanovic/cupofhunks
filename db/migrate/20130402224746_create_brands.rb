class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands do |t|
      t.integer :placement

      t.timestamps
    end
  end
end
