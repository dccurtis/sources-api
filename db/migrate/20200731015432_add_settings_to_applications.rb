class AddSettingsToApplications < ActiveRecord::Migration[5.2]
  def change
    add_column :applications, :settings, :jsonb
  end
end
