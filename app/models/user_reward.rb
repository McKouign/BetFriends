class UserReward < ApplicationRecord
  belongs_to :reward
  belongs_to :user
  belongs_to :target, class_name: 'User', foreign_key: 'target_id' #required: true
end
