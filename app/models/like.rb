class Like < ActiveRecord::Base
  attr_accessible :related_user_id, :user_id
end
