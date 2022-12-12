class Airline < ApplicationRecord
    validates :name, presence: true
    validates :image_url, presence: true

    has_many :reviews
end
