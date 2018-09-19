class User < ApplicationRecord
  def tests_by_level(level)
    Test.joins("INNER JOIN test_results ON tests.id = test_results.test_id")
        .where("user_id = ? AND level = ?", id, level)
        .select('tests.id, tests.title, tests.level, tests.category_id')
  end
end
