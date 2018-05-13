class Report < ApplicationRecord
    has_many :tactivities
    has_many :sactivities
    has_many :rsactivities
    has_many :iactivities
    has_many :rfactivities
        has_many :books
        has_many :collabswstudent
        has_many :collabswfaculties
        
end
