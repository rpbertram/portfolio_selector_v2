class Client < ApplicationRecord
  # Direct associations

  has_many   :allocations,
             :dependent => :destroy

  belongs_to :user,
             :counter_cache => true

  # Indirect associations

  # Validations

end
