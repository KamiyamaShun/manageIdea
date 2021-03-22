class IdeaSerializer < ActiveModel::Serializer
  attributes :id,
             :body
  
  has_one :category,  serializer: CategorySerializer
end
