Rails.application.routes.draw do
    resources :reports do
        resources :tactivities
        resources :sactivities
        resources :rsactivities
        resources :iactivities
    end 
    root 'reports#index'
end
