class Service < ApplicationRecord
    belongs_to :user
    has_many :reviews, dependent: :destroy
    has_many :usertags
    has_many :tags, through: :usertags
    has_many_attached :photos
end
