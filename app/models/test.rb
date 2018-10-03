class Test < ApplicationRecord
  belongs_to :category
  belongs_to :author, class_name: "User"
  has_many :questions, dependent: :destroy
  has_many :test_passings, dependent: :destroy
  has_many :users, through: :tests_passings

  def self.titles_by_category(category_title)
    Category.find_by(title: category_title).tests.order(:title).pluck(:title)
  end
end
