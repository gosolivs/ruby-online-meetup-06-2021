class FrontendController < ApplicationController
  def index
    render template: 'layouts/frontend'
  end
end
