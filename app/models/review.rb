class Review < ApplicationRecord
    has_many :likes, as: :likeable, dependent: :destroy
    belongs_to :reviewer
    belongs_to :book
end
