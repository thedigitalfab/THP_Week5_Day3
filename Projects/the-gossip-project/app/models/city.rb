class City < ApplicationRecord
    # Model's Relationships:
    has_many :users
    
    # Model's Validations:
    validates :name, presence: true
    validates :zip_code, presence: true, uniqueness: true
end
