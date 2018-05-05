class CreatePresentations < ActiveRecord::Migration[5.1]
  def change
    create_table :presentations do |t|
      t.string :title
      t.string :conference
      t.string :organization
      t.date :date
      t.string :venue
      t.string :city
      t.string :presentation

      t.timestamps
    end
  end
end
