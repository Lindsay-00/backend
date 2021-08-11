class AnimeSerializer < ActiveModel::Serializer
  attributes :id, :name, :img_url, :description, :author
  has_many :comments
  has_many :watch_later_lists  
end
