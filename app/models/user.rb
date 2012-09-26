class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :inspiration1, :inspiration2, :inspiration3, :last_name, :organization, :title

  validates_presence_of :first_name, message: "You forgot a little sumpin'"
  validates_presence_of :last_name, message: "You forgot a little sumpin'"
  validates_presence_of :email, message: "You forgot a little sumpin'"
end
