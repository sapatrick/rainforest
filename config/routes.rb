Rails.application.routes.draw do
  resources :jobs
  resources :employees
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

	root "index#index"
end
