class AuthorPostSerializer < ActiveModel::Serializer
  attributes :title, :short_content

  has_many :tags, through: :post_tags

  def short_content
    content = self.object.content
    "#{content[0..39]}..."
  end
end
