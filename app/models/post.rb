class Post < ApplicationRecord
    belongs_to :user
    has_many :comments, dependent: :destroy
    has_one_attached :photo
    after_create :send_verification_email

  private

  def send_verification_email
    # @user = params[:user] if current_user does not work
    UserMailer.with(user: current_user).verification_email.deliver_now
  end
end
