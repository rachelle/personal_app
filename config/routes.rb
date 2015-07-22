Rails.application.routes.draw do
  
  get  'about' => 'static_pages#about'

  root 'contacts#index'
  resources :contacts

end