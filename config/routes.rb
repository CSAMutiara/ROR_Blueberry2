Rails.application.routes.draw do
  
 get  'auth/:provider/callback' => 'sessions#create'
 post 'logout' => 'sessions#destroy'
 get  'auth/failure' => 'sessions#failure'
 get  'auth/twitter', :as => 'login'



    resources :reports do
        resources :tactivities
        resources :sactivities
        resources :rsactivities
        resources :iactivities
        resources :rfactivities
    end 
    root 'reports#index'
end
