class User < ApplicationRecord
  has_many :test_passings, dependent: :destroy
  has_many :tests, through: :test_passings
  has_many :works, class_name: "Test", foreign_key: :author_id

  def tests_by_level(level)
    tests.where(level: level)
  end
end
