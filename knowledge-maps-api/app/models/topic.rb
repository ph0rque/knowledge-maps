class Topic < ApplicationRecord
  has_many :prerequisites, class_name: 'Topic', foreign_key: 'topic_id'

  belongs_to :topic, class_name: 'Topic'
  belongs_to :knowledge_map

  validate :topic_cannot_be_its_own_prerequisite

  def topic_cannot_be_its_own_prerequisite
    errors[:base] << 'Topic cannot be its own prerequesite.' if id == topic_id
  end
end
