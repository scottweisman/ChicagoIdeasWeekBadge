class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :inspiration1, :inspiration2, :inspiration3, :last_name, :organization, :title

  validates_presence_of :first_name, message: "We need this info for your badge."
  validates_presence_of :last_name, message: "We need this info for your badge."
  validates_presence_of :email, message: "We need this info for your badge."
end
