class Mountain < ApplicationRecord
    has_many :summits
    has_many :climbers, through: :summits
end
