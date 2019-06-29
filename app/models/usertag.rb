class Usertag < ApplicationRecord
  belongs_to :service
  belongs_to :tag
end
