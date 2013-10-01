class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :inspiration1, :inspiration2, :inspiration3, :last_name, :organization, :title

  validates :first_name, :last_name, :email, :title, :organization, :presence => true

  def self.length_limits
    length_limits = {:first_name => 11, :last_name => 11, :title => 40, :organization => 40, :inspiration1 => 45, :inspiration2 => 45, :inspiration3 => 45}
  end

  User.length_limits.keys.each do |key|
    validates key, :length => { :maximum => length_limits[key], :too_long => "%{count} characters is the maximum allowed" }
  end
  # validates :first_name, :last_name, :length => { :maximum => 11, :too_long => "%{count} characters is the maximum allowed" }
  # validates :title, :organization, :length => { :maximum => 40, :too_long => "%{count} characters is the maximum allowed" }
  # validates_format_of :email, :with => /@/
  # validates :inspiration1, :inspiration2, :inspiration3, :length => { :maximum => 45, :too_long => "%{count} characters is the maximum allowed" }


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
