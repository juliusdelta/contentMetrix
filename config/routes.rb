Rails.application.routes.draw do

  resources :articles

  get 'about' => 'welcome#about'

  root 'welcome#index'
  

end
