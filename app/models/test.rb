class Test < ApplicationRecord
  def self.find_test_names_by_category(category_title)
    category_ids = Category.where(title: category_title).collect(&:id)
    where("category_id IN (?)", category_ids).order(title: :desc).collect(&:title)
  end
end
