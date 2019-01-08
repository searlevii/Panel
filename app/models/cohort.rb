class Cohort < ApplicationRecord
    has_one :instructor
    has_many :student
end
