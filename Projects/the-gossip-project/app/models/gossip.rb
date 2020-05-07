class Gossip < ApplicationRecord
    # Model's Relationships:
    belongs_to :user
    has_many :likes, as: :likeable
    has_many :comments, as: :commentable
    has_and_belongs_to_many :tags

    # Model's Validations:
    validates :title, presence: true, length: {in: 3..14}
    validates :content, presence: true
end
