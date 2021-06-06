class SimpleController < ApplicationController
  layout 'simple'

  def step_1
    categories
  end

  private

  def categories
    @categories ||= Category.preload(:posts).all
  end
end
