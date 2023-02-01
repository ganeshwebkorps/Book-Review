class Book < ApplicationRecord
    belongs_to :writer
    has_many :reviews, dependent: :destroy
    has_many :reviewers, through: :reviews, dependent: :destroy
    has_many :likes, as: :likeable, dependent: :destroy
    validates :writer, presence: true
    validates :book_name, presence: true
    validates :category, presence: true
end
