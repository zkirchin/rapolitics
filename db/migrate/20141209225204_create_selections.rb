class CreateSelections < ActiveRecord::Migration
  def change
    create_table :selections do |t|
      t.integer :rapper_id
      t.integer :type_id

      t.timestamps
    end
  end
end
