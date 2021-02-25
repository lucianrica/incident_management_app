class CreateIncidents < ActiveRecord::Migration[6.1]
  def change
    create_table :incidents do |t|
      t.string :title
      t.text :content
      t.string :priority
      t.text :resolution
      t.boolean :solved

      t.timestamps
    end
  end
end
