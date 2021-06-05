class SimpleController < ApplicationController
  layout 'simple'

  def index
    categories
  end

  private

  def categories
    @categories ||= Category.preload(:posts).all
  end
end
