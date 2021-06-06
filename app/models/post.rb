# == Schema Information
#
# Table name: posts
#
#  id          :integer          not null, primary key
#  author      :string           not null
#  content     :text
#  image       :string           not null
#  title       :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :integer
#
# Indexes
#
#  index_posts_on_categories_id  (category_id)
#
# Foreign Keys
#
#  category_id  (category_id => categories.id)
#
class Post < ApplicationRecord
  include ActiveModel::Serializers::JSON

  belongs_to :category

  def image_path
    "/static/#{image}.png"
  end

  def attributes
    { 'id' => 0, 'title' => '', 'content' => nil, 'author' => '', 'image_path' => '' }
  end
end
