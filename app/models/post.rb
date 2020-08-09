class Post < ApplicationRecord
    validates :title, :author, :content, presence: true
    has_many :comments, dependent: :destroy
    has_one_attached :photo
    delegate :key, to: :photo, allow_nil: true
end
