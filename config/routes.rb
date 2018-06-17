Rails.application.routes.draw do
  resources :transits
  resources :swipes
  resources :studentcards
  resources :rides
  resources :metrocards
  resources :students
  resources :schools

root to: 'students#splash'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
