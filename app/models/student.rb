class Student < User
  has_many :test_passings, foreign_key: :user_id, dependent: :destroy
  has_many :tests, through: :test_passings

  def tests_by_level(level)
    tests.where(level: level)
  end
end
