class Book < ApplicationRecord
    belongs_to :writer
    has_many :reviews
    has_many :reviewers, through: :reviews
    has_many :likes, as: :likeable
end
