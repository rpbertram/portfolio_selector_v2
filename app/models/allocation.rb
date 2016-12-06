class Allocation < ApplicationRecord
  # Direct associations

  belongs_to :fund,
             :counter_cache => true

  belongs_to :client,
             :counter_cache => true


  #  accepts_nested_attributes_for :client

  # Indirect associations

  # Validations

  validates :client_id, :presence => true

  validates :fund_id, :presence => true

  validates :percentage, :presence => true

  validates :percentage, :numericality => { :less_than_or_equal_to => 1, :greater_than_or_equal_to => 0 }

end
