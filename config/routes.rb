Rails.application.routes.draw do
  root 'posts#index'

  devise_for :users,
   controllers: { registrations: 'registrations' }
  # この行を追加する
  resources :users, only: %i(show)

  resources :posts, only: %i(index new create show destroy) do
   resources :photos, only: %i(create)
   resources :likes, only: %i(create destroy), shallow: true
   resources :comments, only: %i(create destroy), shallow: true
  end
end
