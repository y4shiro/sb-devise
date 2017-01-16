Rails.application.routes.draw do
  # devise_for :users
  devise_for :users, path_names: { sign_in: "login", sign_out: "logout" }
  get 'home/index'

  get 'home/show'

  root to: "home#index"

  # ログイン画面をホームにする
  devise_scope :user do
    root :to => "devise/sessions#new"
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
