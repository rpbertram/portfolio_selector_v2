class Historicalperformance < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :performance, :presence => true

  validates :performance, :numericality => true

end
