class CreateIactivities < ActiveRecord::Migration[5.1]
  def change
    create_table :iactivities do |t|
      t.string :name
      t.datetime :date
      t.text :ta1
      t.text :ta2
      t.text :ta3
      t.text :ta4
      t.string :ta5
      t.string :ta6
      t.string :status
      t.references :report, foreign_key: true

      t.timestamps
    end
  end
end
