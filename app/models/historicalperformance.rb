class Historicalperformance < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :fund_id, :presence => true

  validates :month, :uniqueness => { :scope => [:fund_id] }

  validates :month, :presence => true

  validates :performance, :uniqueness => { :scope => [:fund_id, :month] }

  validates :performance, :presence => true

  validates :performance, :numericality => true

end
