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
    resources :customers,only:[:show, :edit, :update, :confirm, :withdrawal]
    
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
