class Climber < ApplicationRecord
    has_many :summits
    has_many :mountains, through: :summits
end
