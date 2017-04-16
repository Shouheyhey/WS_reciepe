Rails.application.routes.draw do
  resources :notes
  devise_for :users
  resources :users, only: :show
  resources :seminars do
    resources :articles,only: [:create,:update,:delete, :edit]
      collection do
        get 'search'
      end
    end
  root 'seminars#index'
end
