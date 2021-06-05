class Post < ApplicationRecord
  belongs_to :category

  def image_path
    "/static/#{image}.png"
  end
end
