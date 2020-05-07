class PrivateMessage < ApplicationRecord
    # Model's Relationships:
    belongs_to :sender, class_name: "User", optional: true
    has_and_belongs_to_many :recipients, class_name: "User", optional: true

    # Model's Validations:
    validates :content, presence: true
end
