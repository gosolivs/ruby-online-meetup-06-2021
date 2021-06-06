# == Schema Information
#
# Table name: categories
#
#  id          :integer          not null, primary key
#  description :text
#  title       :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Category < ApplicationRecord
  include ActiveModel::Serializers::JSON

  has_many :posts, dependent: :destroy

  def attributes
    { 'id' => 0, 'title' => '', 'description' => nil, 'posts' => [] }
  end
end
