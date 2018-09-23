class Test < ApplicationRecord
  belongs_to :category
  has_many :questions
  has_many :tests_users
  has_many :users, through: :tests_users

  def self.titles_by_category(category_title)
    joins("INNER JOIN categories ON tests.category_id = categories.id")
      .where("categories.title = ?", category_title).order(:title).pluck(:title)
  end
end
