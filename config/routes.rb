Rails.application.routes.draw do
  root "articles#index"
  
  resources :articles do
    resources :comments
  end
  
  get 'errors/internal_server_error'
  get 'errors/not_found'
  match '*path', to: 'errors#not_found', via: :all

end
