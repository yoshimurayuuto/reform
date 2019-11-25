Rails.application.routes.draw do
  root to: 'discussions#index'
  resources :discussions do
    resources :comments
  end
  
  devise_scope :user do
    get 'users/signup', to: "devise/registrations#new"
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users, controllers: {
    registrations: "users/registrations",
    omniauth_callbacks: "users/omniauth_callbacks"
}
end
