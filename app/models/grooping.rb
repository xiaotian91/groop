class Grooping < ActiveRecord::Base
  has_many :groop_registrations
  has_many :users, through: :groop_registrations

  has_many :invitations
end
