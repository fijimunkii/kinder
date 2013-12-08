# == Schema Information
#
# Table name: likes
#
#  id              :integer          not null, primary key
#  user_id         :integer
#  related_user_id :integer
#  is_match        :boolean
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Like < ActiveRecord::Base
  belongs_to :user
  attr_accessible :is_match, :user_id, :related_user_id
end
