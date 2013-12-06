class Like < ActiveRecord::Base
  belongs_to :user
  attr_accessible :is_match, :related_user_id
end
