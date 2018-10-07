class Category < ApplicationRecord
  has_many :tests, dependent: :destroy

  scope :asc, -> { order(title: :asc) }
end
