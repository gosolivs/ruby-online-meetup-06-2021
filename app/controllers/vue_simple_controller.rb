class VueSimpleController < ApplicationController
  layout 'vue_simple'

  def step_1
    categories
  end

  private

  def categories
    @categories ||= Category.preload(:posts).all
  end
end
