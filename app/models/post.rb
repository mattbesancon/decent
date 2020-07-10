class Post < ApplicationRecord
    belongs_to :user
    has_many :comments, dependent: :destroy
    has_one_attached :photo
    # include ActiveModel::Validations
    # validates_with MyValidator
end

=begin
class MyValidator < ActiveModel::Validator
    def validate(record)
        if some_complex_logic
        record.errors.add :base, 'This record is invalid'
        end
    end

private
    def some_complex_logic
    end
end
=end
