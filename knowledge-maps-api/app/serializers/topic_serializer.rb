class TopicSerializer < ActiveModel::Serializer
  attributes :name, :classification

  belongs_to :knowledge_map
end
