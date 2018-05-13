class AddExistsToRsactivities < ActiveRecord::Migration[5.1]
  def change
    add_column :rsactivities, :exists, :boolean
  end
end
