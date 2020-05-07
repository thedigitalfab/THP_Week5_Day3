class Tag < ApplicationRecord
    # Model's Relationships:
    has_and_belongs_to_many :gossips

    # Model's Validations:
    validates :name, presence: true
end
