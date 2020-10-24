class Wine < ApplicationRecord
  has_many :wine_strains
  has_many :strains, through: :wine_strains, dependent: :destroy

 accepts_nested_attributes_for :wine_strains

  def percent
    list= []
    self.wine_strains.map { |x| list.push("#{x.strain.name} (#{x.percentage}%)")}
    list.sort.join(', ')
  end

  def wines_one
    list= []
    self.wine_strains.map { |x| list.push(x.strain.name)}
    list.sort
  end
  
end
