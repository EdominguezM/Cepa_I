class Strain < ApplicationRecord
  has_many :wine_strains
  has_many :wines, through: :wine_strains, dependent: :destroy

  #scope :order_strain, -> { order("name ASC")}
  scope :available, -> { where("status = ?", 0)}

  enum status: [:disponible, :no_disponible]

  
end
