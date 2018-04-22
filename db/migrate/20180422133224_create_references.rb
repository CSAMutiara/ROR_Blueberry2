class CreateReferences < ActiveRecord::Migration[5.1]
  def change
    create_table :references do |t|
      t.date :year

      t.timestamps
    end
  end
end
