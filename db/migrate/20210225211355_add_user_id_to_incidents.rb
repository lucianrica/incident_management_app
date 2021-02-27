class AddUserIdToIncidents < ActiveRecord::Migration[6.1]
  def change
    add_column :incidents, :user_id, :integer
  end
end
