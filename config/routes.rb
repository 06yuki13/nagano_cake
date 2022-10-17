Rails.application.routes.draw do

  devise_for :customers,skip:[:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}


 devise_for :admin,skip:[:registrations, :passwords], controllers: {
  sessions: "admin/sessions"
}

namespace :admin do
    resources :genres,only: [:index, :edit, :create, :update]
    resources :items,only: [:index, :new, :show, :edit, :create, :update]
    resources :customers,only: [:index, :show, :edit, :update]
    get '/'=>'homes#top'
  end

 scope module: :public do
    root to: 'homes#top'
    get 'homes/about'
    get 'customers/confirm' => 'customers#confirm'
    patch 'customers/withdrawal' => 'customers#withdrawal'
    delete 'cart_items/destroy_all' => 'cart_items#destroy_all'
    resources :customers,only:[:show, :edit, :update]
    resources :addresses,only:[:index, :edit, :create, :update, :destroy]
    resources :items,only:[:index, :show]
    resources :cart_items,only:[:index, :update, :create, :destroy, :destroy_all]

  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
