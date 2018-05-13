class CreateCollabswstudents < ActiveRecord::Migration[5.1]
  def change
    create_table :collabswstudents do |t|
      t.string :teachname
      t.string :studename
      t.string :explanation

      t.timestamps
    end
  end
end
