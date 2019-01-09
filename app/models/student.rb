class Student < ApplicationRecord
    belongs_to :cohort
    has_many :cohort
end
