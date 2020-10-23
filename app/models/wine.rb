class Wine < ApplicationRecord
  has_many :wine_strains, dependent: :destroy
  has_many :strains, through: :wine_strains


end
