class AddExistsToSactivities < ActiveRecord::Migration[5.1]
  def change
    add_column :sactivities, :exists, :boolean
  end
end
