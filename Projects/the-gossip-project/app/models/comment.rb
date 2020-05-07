class Comment < ApplicationRecord
    # Model's Relationships:
    belongs_to :user
    has_many :likes, as: :likeable
    belongs_to :commentable, polymorphic: true
    has_many :comments, as: :commentable

    # Model's Validations:
    validates :content, presence: true
end
