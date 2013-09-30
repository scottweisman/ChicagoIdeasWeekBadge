class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :inspiration1, :inspiration2, :inspiration3, :last_name, :organization, :title

  validates_presence_of :first_name, message: "You forgot a little something"
  validates_presence_of :last_name, message: "You forgot a little something"
  validates_presence_of :email, message: "You forgot a little something"
  validates_presence_of :title, message: "You forgot a little something"
  validates_presence_of :organization, message: "You forgot a little something"

  validates :first_name, :length => { :maximum => 11, :too_long => "%{count} characters is the maximum allowed" }
  validates :last_name, :length => { :maximum => 11, :too_long => "%{count} characters is the maximum allowed" }
  validates :title, :length => { :maximum => 40, :too_long => "%{count} characters is the maximum allowed" }
  validates :organization, :length => { :maximum => 40, :too_long => "%{count} characters is the maximum allowed" }
  validates_format_of :email, :with => /@/
  validates :inspiration1, :length => { :maximum => 45, :too_long => "%{count} characters is the maximum allowed" }
  validates :inspiration2, :length => { :maximum => 24, :too_long => "%{count} characters is the maximum allowed" }
  validates :inspiration3, :length => { :maximum => 24, :too_long => "%{count} characters is the maximum allowed" }


  # CSV Export
  comma do
    first_name
    last_name
    title
    organization
    email
    inspiration1
    inspiration2
    inspiration3
  end

end
