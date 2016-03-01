Rails.application.routes.draw do
  root to: 'site#index'

  get "about", to: 'site#show'
  get "resume", to: 'site#cv'
  get 'contact', to: 'site#contact'

  resources :blog

  get 'download-cv', to: 'site#download'

end
