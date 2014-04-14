class User < ActiveRecord::Base
  validates :username, :presence => true, :uniqueness => true
  validates :real_name, :presence => true
  validates :password, :presence => true, :confirmation => true
  has_many :registrations
  has_many :courses, through: :registrations
  has_one :quiz
  has_many :groop_registrations
  has_many :groopings, through: :groop_registrations
end
