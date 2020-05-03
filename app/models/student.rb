class Student < ApplicationRecord
    has_many :enrollments
    has_many :course, through: :enrollments
    validates :name, presence: :true
    validates :name, uniqueness: true
end
