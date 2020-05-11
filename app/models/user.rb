class User < ApplicationRecord
  has_many :participations
  has_many :events, through: :participations
  has_many :events, foreign_key: 'useradmin_id', class_name: "Event"

  after_create :welcome_send

  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end
end
