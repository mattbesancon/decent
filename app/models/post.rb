class Post < ApplicationRecord
    validates :title, :author, :content, presence: true
    has_many :comments, dependent: :destroy
    has_one_attached :photo
end
