class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :local_id
      t.string :guest_id

      t.timestamps null: false
    end
  end
end
