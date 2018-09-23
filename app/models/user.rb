class User < ApplicationRecord
  has_many :tests_users
  has_many :tests, through: :tests_users

  def tests_by_level(level)
    Test.joins("INNER JOIN test_results ON tests.id = test_results.test_id")
        .where(level: level, test_results: { user_id: id })
  end
end
