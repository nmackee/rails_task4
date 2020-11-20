Rails.application.routes.draw do
  root to: 'items#index'
  devise_for :users
  resources :items

  # 単数リソースのルーティング。まりは「idがいるかいらないか」。pathにidが含まれなくなる。
  resource :user, only: :show
end
