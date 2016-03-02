Rails.application.routes.draw do
  root to: 'site#index'

  get "about", to: 'site#show'
  get "resume", to: 'site#cv'

  resources "blog"
  get 'contact', to: 'contacts#new'
  post 'contacts', to: 'contacts#create'


  get 'download-cv', to: 'site#download'

end
