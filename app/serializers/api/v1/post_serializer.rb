module Api
  module V1
    class PostSerializer < ActiveModel::Serializer
      attributes :body
    end
  end
end
