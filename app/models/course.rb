class Course < ApplicationRecord
    has_many :enrollements
    has_many :student, through: :enrollements
end
