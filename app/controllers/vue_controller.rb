class VueController < ApplicationController
  layout 'vue'

  def step_1
    categories
  end

  private

  def categories
    @categories ||= Category.preload(:posts).all
  end
end
