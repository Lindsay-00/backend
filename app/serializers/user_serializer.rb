class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :password
  has_many :comments
  has_many :watch_later_lists  
end
