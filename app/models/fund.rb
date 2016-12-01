class Fund < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :proxyflag, :presence => true

  validates :risktolerance, :presence => true

end
