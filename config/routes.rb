Rails.application.routes.draw do
  get '/', to: redirect(path: '/step_1')
  get '/step_1' => 'simple#step_1'
  get '/step_2' => 'simple#step_2'

  get '/vue_simple/step_1' => 'vue_simple#step_1'

  get '/vue/step_1' => 'vue#step_1'
  get '/vue/step_2' => 'vue#step_2'

  get '/categories' => 'simple#step_1', format: true, constraints: { format: :json }

  get '*page(.:format)' => 'frontend#index', :constraints => FrontendHelper::OnlyHtmlConstraint.new
end
