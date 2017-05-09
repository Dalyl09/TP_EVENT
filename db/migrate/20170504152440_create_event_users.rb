class CreateEventUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :event_users do |t|
      t.references :event
      t.references :user
      t.boolean :presence
      t.boolean :organizer

      t.timestamps
    end
  end
end
