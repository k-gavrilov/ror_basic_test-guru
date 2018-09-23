class Test < ApplicationRecord
  belongs_to :category
  has_many :questions
  has_many :tests_users
  has_many :users, through: :tests_users
  belongs_to :user, -> { where role: "Author" }, dependent: :destroy

  def self.titles_by_category(category_title)
    Category.find_by(title: category_title).tests.order(:title).pluck(:title)
  end
end
