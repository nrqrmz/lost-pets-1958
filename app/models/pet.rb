class Pet < ApplicationRecord
  VALID_SPECIES = %w[dog cat reptile bug horse].freeze

  validates :name, presence: true
  validates :address, presence: true
  validates :found_on, presence: true
  validates :species, inclusion: { in: VALID_SPECIES }

  def days_ago
    days_difference = (Date.today - found_on).to_i
    "Found #{days_difference} days ago"
  end
end
