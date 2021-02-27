class AddIncidentIdToReplies < ActiveRecord::Migration[6.1]
  def change
    add_column :replies, :incident_id, :integer
  end
end
