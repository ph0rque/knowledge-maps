class Topic < ApplicationRecord
  has_many :prerequisites, class_name: 'Topic', foreign_key: 'topic_id'

  belongs_to :topic
  belongs_to :knowledge_map

  validate :topic_cannot_be_its_own_prerequisite
  validates :classification, inclusion: { in: %w(Subject Milestone),
    message: "%{value} must be either Subject or Milestone." }

  def topic_cannot_be_its_own_prerequisite
    if !topic_id.blank? && id == topic_id
      errors[:base] << 'Topic cannot be its own prerequisite.'
    end
  end
end
