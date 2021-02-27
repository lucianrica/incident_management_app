class AddChannelIdToIncidents < ActiveRecord::Migration[6.1]
  def change
    add_column :incidents, :channel_id, :integer
  end
end
