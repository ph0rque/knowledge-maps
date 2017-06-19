class KnowledgeMapSerializer < ActiveModel::Serializer
  attributes :name, :description

  has_many :topics
end
