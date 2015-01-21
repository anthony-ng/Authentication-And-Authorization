class User < ActiveRecord::Base
  #TODO : Use bcrypt to store hashed passwords and authenticate users
  def password
    @password_hash ||= BCrypt::Password..new(password_hash)
  end


end
