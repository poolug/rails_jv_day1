class Wine < ApplicationRecord
    validates :name, presence: :true
    has_many :wines_strains
    has_many :strains, through: :wines_strains, dependent: :destroy
    accepts_nested_attributes_for :wines_strains, allow_destroy: true
end
