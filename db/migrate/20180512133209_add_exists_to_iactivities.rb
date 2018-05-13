class AddExistsToIactivities < ActiveRecord::Migration[5.1]
  def change
    add_column :iactivities, :exists, :boolean
  end
end
