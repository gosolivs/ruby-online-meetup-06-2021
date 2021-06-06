class FrontendController < ApplicationController
  def index
    respond_to do |format|
      format.html { render template: 'layouts/frontend' }
    end
  end
end
