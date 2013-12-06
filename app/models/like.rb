class Like < ActiveRecord::Base
  belongs_to :user
  attr_accessible :is_match, :user_id, :related_user_id
end
