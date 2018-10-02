class Test < ApplicationRecord
  belongs_to :category
  belongs_to :author
  has_many :questions, dependent: :destroy
  has_many :test_passings, dependent: :destroy
  has_many :students, through: :test_passings, source: :user

  def self.titles_by_category(category_title)
    Category.find_by(title: category_title).tests.order(:title).pluck(:title)
  end
end
