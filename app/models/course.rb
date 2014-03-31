class Course < ActiveRecord::Base
  has_many :registrations
  has_many :user, through: :registrations
end
