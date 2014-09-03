class CreateAgendas < ActiveRecord::Migration
  def change
    create_table :agendas do |t|
      t.string :name
      t.string :song
      t.integer :rapper_id
      t.text :video
      t.text :resource
      t.integer :type_id

      t.timestamps
    end
  end
end
