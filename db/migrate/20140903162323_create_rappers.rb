class CreateRappers < ActiveRecord::Migration
  def change
    create_table :rappers do |t|
      t.string :name

      t.timestamps
    end
  end
end
