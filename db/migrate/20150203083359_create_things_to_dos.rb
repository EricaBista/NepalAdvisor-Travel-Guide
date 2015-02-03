class CreateThingsToDos < ActiveRecord::Migration
  def change
    create_table :things_to_dos do |t|
      t.string :Name
      t.string :Title
      t.string :Content

      t.timestamps
    end
  end
end
