class KnowledgeMap < ApplicationRecord
  has_many :topics

  validate :name, presence: true 
end
