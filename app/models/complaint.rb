class Complaint < ActiveRecord::Base
  belongs_to :user
  belongs_to :ministry
end
