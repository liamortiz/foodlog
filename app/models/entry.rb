class Entry < ApplicationRecord
    validates :carbs, :proteins, :fats, :calories, numericality: true
    validates :meal_type, presence: true
end
