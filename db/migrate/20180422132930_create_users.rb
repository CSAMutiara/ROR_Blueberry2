class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :provider
      t.integer :uid

      t.timestamps
    end
  end
end
