class Fund < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :name, :uniqueness => { :scope => [:risktolerance] }

  validates :name, :presence => true

  validates :proxyflag, :presence => true

  validates :risktolerance, :presence => true

end
