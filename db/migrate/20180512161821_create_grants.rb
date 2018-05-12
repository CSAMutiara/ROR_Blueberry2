class CreateGrants < ActiveRecord::Migration[5.1]
  def change
    create_table :grants do |t|
      t.string :name
      t.string :gtype
      t.string :explanation

      t.timestamps
    end
  end
end
