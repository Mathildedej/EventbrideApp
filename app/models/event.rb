class Event < ApplicationRecord
  validates :start_date, presence: true
  validates :duration, presence: true, :numericality => { :greater_than_or_equal_to => 0 }
  validates :title, presence: true, length: { in: 5..140 }
  validates :description, presence: true, length: { in: 20..1000 }
  validates :price, presence: true, :inclusion => 1..1000
  validates :location, presence: true 
  
  #validates :start_must_be_in_the_futur
  #def start_must_be_in_the_futur
   # errors.add(:start_date, "must be in the futur") unless
    #    start_date < Time.now
  #end 
  has_many :participations
  has_many :users, through: :participations
  #belongs_to :admin, class_name: 'User'

end
