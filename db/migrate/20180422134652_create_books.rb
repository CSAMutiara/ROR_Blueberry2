class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :containerr
      t.string :contributors
      t.string :version
      t.string :number
      t.string :publisher
      t.date   :year
      t.string :location
      t.integer :reference_id

      t.timestamps
    end
  end
end
