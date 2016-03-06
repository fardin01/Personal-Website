Rails.application.routes.draw do
  root to: 'site#index'

  get "about", to: 'site#show'
  get "resume", to: 'site#cv'

  resources :blog_posts, :path => "blog"
  get 'contact', to: 'contacts#new'
  post 'contacts', to: 'contacts#create'

  get 'download-cv', to: 'site#download'

  resources :sessions, only: [:create, :destroy]
  get '/backdoor/login', to: 'sessions#new'
  get 'logout', to: 'sessions#destroy', as: 'logout'

end
