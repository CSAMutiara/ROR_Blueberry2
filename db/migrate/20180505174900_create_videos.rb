class CreateVideos < ActiveRecord::Migration[5.1]
  def change
    create_table :videos do |t|
      t.string :title
      t.string :url
      t.date :date
      t.string :contributors
      t.string :publisher
      t.string :location
      t.integer :reference_id

      t.timestamps
    end
  end
end
