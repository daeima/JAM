Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :job_applications, except: %i[destroy] do
    member do
      patch :archive
    end
    member do
      patch :unarchive
    end
    resources :interviews, except: %i[index] do
      resources :contacts, only: %i[new create]
    end
  end

  if Rails.env.development?
    get 'kitchensink', to: 'pages#kitchensink'
  end
end
