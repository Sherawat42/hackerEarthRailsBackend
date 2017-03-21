class AddDesToComplaints < ActiveRecord::Migration
  def change
    add_column :complaints, :description, :string
  end
end
