class RenameColumnInSeekerTable < ActiveRecord::Migration[6.0]
  def change
    rename_column :seekers, :hero_handle, :seeker_signal
  end
end
