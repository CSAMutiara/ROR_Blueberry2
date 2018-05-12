class CreateReferences < ActiveRecord::Migration[5.1]
  def change
    create_table :references do |t|
      t.string :books
      t.string :grants
      t.string :stcollabs
      t.string :facollabs
      t.string :aebcreferences
      t.string :efvreferences
      t.string :wcpitreferences
      t.string :pcmreferences
      t.string :cifwreferences
      t.string :ahareferences

      t.timestamps
    end
  end
end
