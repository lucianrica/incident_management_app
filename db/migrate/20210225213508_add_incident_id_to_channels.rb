class AddIncidentIdToChannels < ActiveRecord::Migration[6.1]
  def change
    add_column :channels, :incident_id, :integer
  end
end
