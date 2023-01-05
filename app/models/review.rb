class Review < ApplicationRecord
    has_many :likes, as: :likeable
    belongs_to :reviewer
    belongs_to :book
end
