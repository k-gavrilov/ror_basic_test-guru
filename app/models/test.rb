class Test < ApplicationRecord
  belongs_to :category
  has_many :questions
  has_many :test_passings
  has_many :users, through: :tests_passings

  def self.titles_by_category(category_title)
    Category.find_by(title: category_title).tests.order(:title).pluck(:title)
  end
end
