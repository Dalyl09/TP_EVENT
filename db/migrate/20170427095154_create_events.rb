class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :title
      t.text :content
      t.datetime :schedule_at
      t.string :place
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
