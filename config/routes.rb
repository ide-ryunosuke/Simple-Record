Rails.application.routes.draw do
  root 'members#index'
  
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }

  resources :members do
  end
end
