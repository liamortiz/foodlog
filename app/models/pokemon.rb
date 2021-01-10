class Pokemon < ApplicationRecord
    validates :name, :pokemon_id, :type1, :type2, :trainer_id, presence: true
    belongs_to :trainer
end
