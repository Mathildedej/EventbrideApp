class Participation < ApplicationRecord
  belongs_to :event
  belongs_to :user

  after_create :participate_send

  def participate_send
    UserMailer.participate_email(self).deliver_now
  end
end
