class AddExistsToRfactivities < ActiveRecord::Migration[5.1]
  def change
    add_column :rfactivities, :exists, :boolean
  end
end
