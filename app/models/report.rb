class Report < ApplicationRecord
    has_many :tactivities
    has_many :sactivities
end
