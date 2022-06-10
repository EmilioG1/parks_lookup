class Park < ApplicationRecord
  validates :name, :location, presence: true

  scope :search, -> (name) {where("name like ?", "#{name}")}
end