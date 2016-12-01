class Allocation < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :percentage, :presence => true

  validates :percentage, :numericality => { :less_than_or_equal_to => 1, :greater_than_or_equal_to => 0 }

end
