class Category < ApplicationRecord
  has_many :tests, dependent: :destroy

  scope :asc, -> { order(title: :asc) }

  validates :title, presence: true
end
