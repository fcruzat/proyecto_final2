class Service < ApplicationRecord
    belongs_to :user
    has_many :reviews
    has_many :usertags
    has_many :tags, through: :usertags
end
