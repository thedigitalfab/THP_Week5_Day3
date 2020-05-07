class Like < ApplicationRecord
    # Model's Relationships:
    belongs_to :user
    belongs_to :likeable, polymorphic: true

    # Model's Validations:
end
