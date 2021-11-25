Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :job_applications, except: %i[destroy] do
    resources :interviews, except: %i[index]
    member do
      patch :archive
      patch :favorite
    end
    member do
      patch :unarchive
    end
  end

  resources :interviews, only: [] do
    resources :contacts, except: %i[index show]
  end

  if Rails.env.development?
    get 'kitchensink', to: 'pages#kitchensink'
  end
end
