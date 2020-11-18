class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :posts
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  after_create :send_verification_email

  private

  def send_verification_email
    UserMailer.with(user: self).verification_email.deliver_now
  end

  #def current_user
  #  @current_user ||= ((User.find(session[:user_id]) if session[:user_id]) || User.new)
  #end
  
  def is_admin?
    current_user && current_user.admin?
  end
end
