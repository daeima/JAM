Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :job_applications, except: %i[destroy] do
    resources :interviews, except: %i[index] do
      resources :contacts, only: %i[new create]
    end
  end

  put 'job_applications/:id/archive', to: "job_applications#archive", as: "archive"

  if Rails.env.development?
    get 'kitchensink', to: 'pages#kitchensink'
  end
end
