class Review < ApplicationRecord
    has_many :likes, as: :likeable, dependent: :destroy
    belongs_to :reviewer
    belongs_to :book
    validates :discription, length: { minimum: 10 }
    validates :discription, presence: true 
end
