class User < ApplicationRecord
  has_many :participations
  has_many :events, through: :participations
  has_many :events, foreign_key: 'useradmin_id', class_name: "Event"
end
