class Quiz < ActiveRecord::Base
  validates :one, presence: true
  validates :two, presence: true
  validates :three, presence: true
  validates :four, presence: true
  validates :five, presence: true
  validates :six, presence: true
  validates :seven, presence: true
  validates :eight, presence: true
  
  belongs_to :user
end
