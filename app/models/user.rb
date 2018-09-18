class User < ApplicationRecord
  def test_by_level(level)
    test_result_ids = TestResult.where(user_id: id).collect(&:test_id)
    Test.where("id IN (?) AND level = ?", test_result_ids, level)
  end
end
