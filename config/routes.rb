Rails.application.routes.draw do

  root to: 'brogs#index'

  resources :blogs

end
