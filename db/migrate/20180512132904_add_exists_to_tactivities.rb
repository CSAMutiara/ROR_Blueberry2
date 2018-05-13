class AddExistsToTactivities < ActiveRecord::Migration[5.1]
  def change
    add_column :tactivities, :exists, :boolean
  end
end
