class CreateComplaints < ActiveRecord::Migration
  def change
    create_table :complaints do |t|
      t.integer :user_id
      t.integer :ministry_id
      t.string :img_url
      t.string :audio_text
      t.string :video_url
      t.string :location
      t.string :status

      t.timestamps null: false
    end
  end
end
