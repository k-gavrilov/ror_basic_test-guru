class Test < ApplicationRecord
  def self.titles_by_category(category_title)
    joins("INNER JOIN categories ON tests.category_id = categories.id")
      .where("categories.title = ?", category_title).pluck(:title).sort
  end
end
