class User < ActiveRecord::Base
  include Authem::User
  validates_presence_of :username, :email, :password, :password_confirmation, on: :create
end
