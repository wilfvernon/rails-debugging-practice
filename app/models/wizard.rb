class Wizard < ApplicationRecord
    has_many :favorite_spells
    has_many :spells, through: :favorite_spells

    @@houses = ["Gryffindor", "Slytherin", "Hufflepuff", "Ravenclaw"]

    def self.houses
        @@houses
    end
end
