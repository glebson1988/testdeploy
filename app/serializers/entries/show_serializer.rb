module Entries
  class ShowSerializer < ActiveModel::Serializer
    attributes :id, :gender, :image_url

    def image_url
      object.image.present? ? object.image.url : ''
    end
  end
end
