class Historicalperformance < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :performance, :uniqueness => { :scope => [:fund_id, :month] }

  validates :performance, :presence => true

  validates :performance, :numericality => true

end
