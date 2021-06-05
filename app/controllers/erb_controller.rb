class ErbController < ApplicationController
  layout 'bootstrap'

  def bootstrap
    categories
  end

  private

  def categories
    @categories ||= Category.preload(:posts).all
  end
end
