class Tag < ApplicationRecord
    has_many :usertags
    has_many :services, through: :usertags

end
