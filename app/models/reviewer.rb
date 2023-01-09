class Reviewer < User
    has_many :reviews, dependent: :destroy
    has_many :books, through: :reviews, dependent: :destroy
end