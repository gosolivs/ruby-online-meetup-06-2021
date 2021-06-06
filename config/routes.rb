Rails.application.routes.draw do
  get '/', to: redirect(path: '/step_1')
  get '/step_1' => 'simple#step_1'
  get '/step_2' => 'simple#step_2'
end
