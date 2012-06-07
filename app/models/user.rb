class User < ActiveRecord::Base
  attr_accessible :email, :firstname, :lastname
  validates_presence_of :lastname, :firstname, :email
end
