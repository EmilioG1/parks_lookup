class Park < ApplicationRecord
  validates :name, :location, presence: true
end