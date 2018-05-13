class Report < ApplicationRecord
    has_many :tactivities, :dependent => :delete_all
    has_many :sactivities, :dependent => :delete_all
    has_many :rsactivities, :dependent => :delete_all
    has_many :iactivities, :dependent => :delete_all
    has_many :rfactivities, :dependent => :delete_all
end
