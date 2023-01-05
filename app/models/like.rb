class Like < ApplicationRecord
    belongs_to :likeable, polymorph: true
end
