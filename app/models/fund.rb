class Fund < ApplicationRecord
  # Direct associations

  has_many   :historicalperformances,
             :dependent => :destroy

  has_many   :allocations,
             :dependent => :destroy

  # Indirect associations

  has_many   :clients,
             :through => :allocations,
             :source => :client


  # Validations

  validates :name, :uniqueness => { :scope => [:risktolerance] }

  validates :name, :presence => true

  validates :proxyflag, :presence => true

  validates :risktolerance, :presence => true


end
