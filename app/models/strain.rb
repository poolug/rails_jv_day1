class Strain < ApplicationRecord
    validates :name, presence: :true
    has_many :wines_strains
    has_many :wines, through: :wines_strains
end
