class CreateCollabswfaculties < ActiveRecord::Migration[5.1]
  def change
    create_table :collabswfaculties do |t|
      t.string :name
      t.string :explanation

      t.timestamps
    end
  end
end
