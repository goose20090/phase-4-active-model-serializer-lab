class ProfileSerializer < ActiveModel::Serializer
  attributes :username, :email, :bio, :avatar_url

  has_many :tags
end
