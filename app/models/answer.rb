class Answer < ApplicationRecord
  MAX_NUM_ANSWERS = 4

  belongs_to :question

  scope :correct, -> { where(correct: true) }

  validates :body, presence: true
  validate :validate_number_of_answers, on: :create

  def validate_number_of_answers
    return unless question.answers.size >= MAX_NUM_ANSWERS
    errors.add(:question_id, "There is already maximum number of questions (#{MAX_NUM_ANSWERS})")
  end
end
