class Topic < ApplicationRecord
  has_many :prerequisites, class_name: 'Topic', foreign_key: 'topic_id'

  belongs_to :topics, class_name: 'Topic'
  belongs_to :knowledge_maps
end
