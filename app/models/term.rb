class Term < ApplicationRecord

  def self.categories
    %w( programming_languages technologies social_networks geographic_areas places areas companies activities perks )
  end

  scope :programming_languages, -> { where(category: 'programming_languages') }
  scope :technologies, -> { where(category: 'technologies') }
  scope :social_networks, -> { where(category: 'social_networks') }
  scope :geographic_areas, -> { where(category: 'geographic_areas') }
  scope :places, -> { where(category: 'places') }
  scope :areas, -> { where(category: 'areas') }
  scope :companies, -> { where(category: 'companies') }
  scope :activities, -> { where(category: 'activities') }
  scope :perks, -> { where(category: 'perks') }

end
