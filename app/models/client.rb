class Client < ApplicationRecord
  # Direct associations

  has_many   :allocations,
             :dependent => :destroy

  belongs_to :user,
             :counter_cache => true

  # Indirect associations

  has_many   :funds,
             :through => :allocations,
             :source => :fund

  # Validations

end
