class User < ActiveRecord::Base
  validates :username, :presence => true, :uniqueness => true
  validates :real_name, :presence => true
  validates :password, :presence => true, :confirmation => true
  has_many :registrations
  has_many :courses, through: :registrations
  has_one :quiz
  has_many :groop_registrations
  has_many :groopings, through: :groop_registrations

  has_many :invitations
  belongs_to :invitation

  has_attached_file :picture, :styles => {:medium => "300x300>", :small => "100x100#" }, :default_url => "/img/default_:style.jpg"

  validates_attachment :picture, :content_type => { :content_type => ["image/jpg", "image/gif", "image/png", "image/jpeg"] }
  has_many :posts

end
