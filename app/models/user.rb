class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :inspiration1, :inspiration2, :inspiration3, :last_name, :organization, :title
end
