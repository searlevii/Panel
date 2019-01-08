class Instructor < ApplicationRecord
    has_many :cohort
    has_many :course
end
