class SimpleController < ApplicationController
  layout 'simple'

  def step_1
    respond_to do |format|
      format.html { categories }
      format.json { render json: categories }
    end
  end

  def step_2
    categories
  end

  private

  def categories
    @categories ||= Category.preload(:posts).all
  end
end
