class User < ActiveRecord::Base
  attr_accessible :from_user, :from_user_name, :profile_image_url, :source, :text
end
