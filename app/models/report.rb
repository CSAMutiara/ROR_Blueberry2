class Report < ApplicationRecord
    has_many :tactivities
    has_many :sactivities
    has_many :rsactivities
    has_many :iactivities
end
