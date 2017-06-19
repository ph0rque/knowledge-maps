class KnowledgeMapSerializer < ActiveModel::Serializer
  attributes :name, :description

  has_many :topics

  # attribute :links do
  #   id = object.id
  #   {
  #     self: knowledge_map_path(id)
  #   }
  # end
end
