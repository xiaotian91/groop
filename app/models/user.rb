class User < ActiveRecord::Base
  validates :username, :presence => true, :uniqueness => true
  validates :real_name, :presence => true
  validates :password, :presence => true, :confirmation => true
end
